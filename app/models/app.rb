# == Schema Information
#
# Table name: apps
#
#  id           :integer          not null, primary key
#  name         :string
#  resource_url :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class App < ActiveRecord::Base
end
