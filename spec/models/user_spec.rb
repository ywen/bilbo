require 'spec_helper'

describe User do
  subject {Factory.build :user}
  describe "validations" do
    it "should have a valid state" do
      subject.should be_valid
    end

    require_attribute :name
    require_attribute :password
    require_attribute :email

    uniqueness_on :email
  end
end
