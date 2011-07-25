require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))

describe PagesController do
  describe "GET#index" do
    let(:page1) {double :page1}
    let(:page2) {double :page2}
    before(:each) do
      Page.stub(:all).and_return [page1, page2]
    end
    
    it "should get all pages" do
      Page.should_receive(:all).and_return [page1, page2]
      get :index
    end

    it "should assign pages" do
      get :index
      assigns[:pages].should == [page1, page2]
    end
  end
end
