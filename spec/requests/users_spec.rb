require 'spec_helper'

describe "Users" do

	describe "Basic user works fine" do
	  before {@user = User.new(name:'Test User', email:'Test@User.com', password:'123456', password_confirmation:'123456')}
  
  	subject {@user}
  
	  it { should respond_to(:name) }
	  it { should respond_to(:email) }
		it { should be_valid }
	end
	
	describe "Passwords" do
		it "should throw an error when confirmation password does not match" do
			usr = User.new( name:'Test User', email:'Test@User.com', password:'123456', password_confirmation:'123256' )
			expect(usr).to_not be_valid 
		end

		it "should throw an error when password is too short" do
			usr = User.new( name:'Test User', email:'Test@User.com', password:'12345', password_confirmation:'12345' )
			expect(usr).to_not be_valid 
		end
	end

	describe "email" do
		it "should not be empty" do
			usr = User.new( name:'Test User', email:' ', password:'123456', password_confirmation:'123456' )
			expect(usr).to_not be_valid 
		end
		
		it "should not be a non-email string" do
			usr = User.new( name:'Test User', email:'Test', password:'123456', password_confirmation:'123456' )
			expect(usr).to_not be_valid 
		end
	end	
end
