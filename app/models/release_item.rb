class ReleaseItem < ActiveRecord::Base
  belongs_to :release
  attr_accessible :application_id, :release_id, :version
end
