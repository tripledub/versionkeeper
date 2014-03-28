class Application < ActiveRecord::Base
  belongs_to :project
  attr_accessible :name, :project_id
end
