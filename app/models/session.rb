class Session < ActiveRecord::Base
	belongs_to :speaker, :class_name => 'User', :foreign_key => 'speaker_id'
end