require 'spec_helper'

describe Page do
  describe ".all" do
    context "when no pages" do
      it "returns an empty array" do
        Page.all.should be_empty
      end
    end

    context "When a page exists" do
      it "should return it" do
        page = CustomFactory.page
        Page.all.length.should == 1
      end
    end
  end
end
