class CreateOfferings < ActiveRecord::Migration
  def self.up
    create_table :offerings do |t|
      t.column :course_id,                 :integer 
      t.column :description,               :text
      t.column :purchase_price,            :decimal, :precision =>10, :scale =>2 
      t.column :donation_price,            :decimal, :precision =>10, :scale =>2 
      t.column :charity_id,                :integer 
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
    end
  end

  def self.down
    drop_table :offerings
  end
end
