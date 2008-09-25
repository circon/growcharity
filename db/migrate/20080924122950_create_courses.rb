class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.column :title,                     :string
      t.column :identifier,                :string
      t.column :description,               :text
      t.column :asset_id,                  :integer
      t.column :quiz_id,                   :integer
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
    end
  end

  def self.down
    drop_table :courses
  end
end
