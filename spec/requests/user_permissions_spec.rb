require 'spec_helper'
describe "UserPermissions" do
	describe "Default value" do		
	
		before { @usr_perm = UserPermission.create! }
	
		it "should be speaker only" do
			expect(@usr_perm.speaker?).to be_true
			expect(@usr_perm.reviewer?).to be_false
			expect(@usr_perm.admin?).to be_false
		end		
	end
end