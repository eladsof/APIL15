class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string  :name
      t.text :about
      t.text :link
      t.integer :sponsorship_type

      t.timestamps
    end
  end
end
