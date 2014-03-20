class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string  :title
      t.text    :abstract
      t.integer :status

      t.timestamps
    end
  end
end
