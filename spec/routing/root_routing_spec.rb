require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))

describe 'Root Routing' do
  describe "routing" do

    it "has a root path" do
      { :get => "/" }.should route_to(:controller => "pages", :action => "index")
    end
  end
end

