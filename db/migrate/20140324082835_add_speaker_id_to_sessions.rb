class AddSpeakerIdToSessions < ActiveRecord::Migration
  def change
  	add_column :sessions, :speaker_id, :integer
  end
end
