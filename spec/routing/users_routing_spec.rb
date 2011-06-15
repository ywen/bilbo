require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))

describe UsersController do
  describe "routing" do

    it "recognizes and generates #new" do
      { :get => "/users/sign_up" }.should route_to(:controller => "users", :action => "new")
    end
  end
end
