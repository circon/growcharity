class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.column :course_id,                 :integer
      t.column :title,                     :string
      t.column :description,               :text
      t.column :resource_type,             :string
      t.column :resource_url,              :string
      t.column :thumbnail,                 :string
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
    end
  end

  def self.down
    drop_table :assets
  end
end
