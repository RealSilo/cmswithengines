require 'rails_helper'
require 'byebug'

module Samurai
  describe User do
    it "has a valid factory" do
      expect(FactoryGirl.build_stubbed(:user)).to be_valid
    end
    
    it "is invalid without an email" do
      expect(FactoryGirl.build_stubbed(:user, email: nil)).to_not be_valid
    end
    
    it "is invalid without a password" do
      expect(FactoryGirl.build_stubbed(:user, password: nil)).to_not be_valid
    end
    
    it "is invalid with different password and password confirmation" do
      expect(FactoryGirl.build_stubbed(:user, password: 'pass', password_confirmation: 'pwd')).not_to be_valid
    end
  end
end
