require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))

describe PagesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/pages" }.should route_to(:controller => "pages", :action => "index")
    end

    it "recognizes and generates #show" do
      { :get => "/pages/12" }.should route_to(:controller => "pages", :action => "show", :id => '12')
    end
  end
end
