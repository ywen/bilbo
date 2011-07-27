require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))

describe PagesController do
  describe "GET#index" do
    let(:page1) {double :page1}
    let(:page2) {double :page2}
    context "when the user logged in" do
      let(:user) {Factory.build :user}
      before(:each) do
        Page.stub(:all).and_return [page1, page2]
        @request.env["devise.mapping"] = Devise.mappings[:admin]
        sign_in :user, user
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
end
