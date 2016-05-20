class AppsController < ApplicationController
  def index
    @apps = App.select(:id, :name, :resource_url).all.order('name asc')
  end
end
