class AcceptedSession < Session
	has_one :accepted_by
	validates_associated :accepted_by
end
