class AlterUsersV1 < ActiveRecord::Migration
  def self.up
    change_column :users, :admin, :boolean
  end

  def self.down
    change_column :users, :admin, :string
  end
end
