require 'spec_helper'

describe "Sessions" do
	before do
	  	@s_speaker = Speaker.create!(name: 'Speak Errr', email: 'speak@errr.com', password: '123456', password_confirmation: '123456')
	end

	describe "Basic session works fine" do
	  before do
	  	@session = Session.create!(speaker: @s_speaker, title: 'This is my Session', abstract: 'This is the best session, with many things \n and puppies')
	  end	
  
  	subject {@session}
  
	  it { should respond_to(:title) }
	  it { should respond_to(:abstract) }
	  it { should respond_to(:speaker) }
		it { should be_valid }
	end
	
	describe "Invalid data" do
		it "should not allow to create a session without a speaker" do
			test_session = Session.create(title: 'This is my Session', abstract: 'This is the best session, with many things \n and puppies')
			expect(test_session).to_not be_valid
		end

		it "should not allow to create a session without a title" do
	  	test_session = Session.create(speaker: @s_speaker, title: '', abstract: 'This is the best session, with many things \n and puppies')
			expect(test_session).to_not be_valid
		end
		
		it "should not allow to create a session with a long title" do
		  long_title = "1234567890123456789012345678901"
	  	test_session = Session.create(speaker: @s_speaker, title: long_title, abstract: 'This is the best session, with many things \n and puppies')
			expect(test_session).to_not be_valid
		end
		
		it "should not allow to create a session without an abstract" do
	  	test_session = Session.create(speaker: @s_speaker, title: 'Best Title ever!!!', abstract: '')
			expect(test_session).to_not be_valid
		end
		
	end
	
end
