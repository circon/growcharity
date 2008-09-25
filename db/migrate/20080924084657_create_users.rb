class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "users", :force => true do |t|
      t.column :login,                     :string, :limit => 40
      t.column :first_name,                :string, :limit => 100, :default => '', :null => true
      t.column :last_name,                 :string, :limit => 100, :default => '', :null => true
      t.column :email,                     :string, :limit => 100
      t.column :profession,                :string
      t.column :admin,                     :string
      t.column :crypted_password,          :string, :limit => 40
      t.column :salt,                      :string, :limit => 40
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      t.column :remember_token,            :string, :limit => 40
      t.column :remember_token_expires_at, :datetime
      t.column :activation_code,           :string, :limit => 40
      t.column :activated_at,              :datetime
    end
    add_index :users, :login, :unique => true
    
#    it will create a default admin user for the site Username => admin , Password => password
#    Just go and make activation_code null.
    u = User.new :login =>"admin", :first_name =>"admin", :last_name =>"admin", :email =>"admin@growcharity.com", :profession =>"Site Admin", :admin =>"1", :crypted_password =>"4eb0131ddc25a3038d5db2882f26f77dae979712", :salt =>"db140ce376435114d6a4f1f6b2c7a538159d9bd7",:created_at =>"2008-09-25 07:40:10",:updated_at =>"2008-09-25 07:40:10",:remember_token =>nil ,:remember_token_expires_at =>nil,:activation_code =>nil,:activated_at =>"2008-09-25 07:40:10"
    u.save(false)
  end

  def self.down
    drop_table "users"
  end
end
