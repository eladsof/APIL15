require 'spec_helper'

describe "Sessions" do

	describe "Basic session works fine" do
	  before {@session = Session.create(:title => 'This is my Session', :abstract => 'This is the best session, with many things \n and puppies')}
  
  	subject {@session}
  
	  it { should respond_to(:title) }
	  it { should respond_to(:abstract) }
	  it { should respond_to(:speaker) }
		it { should be_valid }
	end
	
end
