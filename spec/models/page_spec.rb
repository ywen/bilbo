require 'spec_helper'

describe Page do
  describe ".all" do
    context "when no pages" do
      it "returns an empty array" do
        Page.all.should be_empty
      end
    end
  end
end
