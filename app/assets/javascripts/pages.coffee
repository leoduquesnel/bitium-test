fastRequestTime = () ->
  90

getActualTime = () ->
  new Date().getTime();

executeAppsTests = () ->
  $.get '/apps.json', (response) ->
    if response.apps && response.apps.length > 0
      tests_results = runTests(response.apps)
    else
      alert("Error during apps retrieval")

runTests = (apps) ->
  cleanTestsResult()
  $.each apps, (i, app) ->
    start_time = getActualTime()
    $.get app.resource_url, (response) ->
      request_time = getActualTime() - start_time
      apps[i].visited = request_time < fastRequestTime()
      displayTestResult(apps[i])
      if apps[i].visited
        saveTestResult(apps[i].id)

cleanTestsResult = () ->
  $("#results").empty()

displayTestResult = (result) ->
  $("#results").append($("<li></li>").append(result.name + ": " + result.visited))

saveTestResult = (app_id) ->
  $.post '/apps_users', {app_id: app_id}

bindRunTestsBtn = () ->
  $("button#run-tests-button").on 'click', (e) ->
    e.preventDefault()
    executeAppsTests()

$ ->
  bindRunTestsBtn()