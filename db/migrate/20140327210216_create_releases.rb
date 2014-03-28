class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.date :date
      t.string :notes
      t.integer :project_id

      t.timestamps
    end
  end
end
