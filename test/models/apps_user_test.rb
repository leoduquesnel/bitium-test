# == Schema Information
#
# Table name: apps_users
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  app_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AppsUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
