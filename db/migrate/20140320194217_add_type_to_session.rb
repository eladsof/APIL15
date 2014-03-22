class AddTypeToSession < ActiveRecord::Migration
  def change
	  add_column :sessions, :type, :string
  end
end
