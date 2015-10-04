class AddSiteIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :site_id, :integer
  	add_column :users, :user_type, :integer
  end
end
