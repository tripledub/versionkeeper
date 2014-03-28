class Project < ActiveRecord::Base
  has_many :applications
  #belongs_to :user
  attr_accessible :name, :user_id
end
