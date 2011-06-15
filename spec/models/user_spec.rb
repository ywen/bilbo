require 'spec_helper'

describe User do
  subject {Factory.build :user}
  describe "validations" do
    it "should have a valid state" do
      subject.should be_valid
    end


  end
end
