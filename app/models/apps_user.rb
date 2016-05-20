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

class AppsUser < ActiveRecord::Base
  validates :user_id, :app_id, presence: true
  validates_uniqueness_of :user_id, scope: :app_id
end
