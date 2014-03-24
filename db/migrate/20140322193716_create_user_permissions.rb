class CreateUserPermissions < ActiveRecord::Migration
  def change
    create_table :user_permissions do |t|
    	t.boolean :speaker, :default => true
    	t.boolean :reviewer, :default => false
    	t.boolean :admin, :default => false
    end
  end
end
