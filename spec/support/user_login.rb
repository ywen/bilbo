shared_context "user logged in" do
  let(:user) {Factory.create :user}
  before(:each) do
    sign_in :user, user
  end
end
