class Session < ActiveRecord::Base
	belongs_to :speaker
	validates_associated :speaker
	
end
