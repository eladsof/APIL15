class Session < ActiveRecord::Base
	belongs_to :speaker
	validates :speaker_id, presence: true
	validates :title, presence: true, length: {maximum: 30}
	validates :abstract, presence: true
end
