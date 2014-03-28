class Release < ActiveRecord::Base
  belongs_to :project
  has_many :release_items
  attr_accessible :date, :notes, :project_id
end
