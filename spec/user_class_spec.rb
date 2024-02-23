require 'user_class'

RSpec.describe User do
  describe "#log_in" do
    it "logs the user in" do
      user1 = User.new('user1')
      user1.log_in
      expect(user1.logged_in).to eq(true)
    end
  end

  describe "#log_out" do
    it "logs the user out" do
      user2 = User.new('user2')
      user2.log_out
      expect(user2.logged_in).to eq(false)
    end
  end

  describe "#username" do
    it "returns the correct username" do
      user3 = User.new('user3')
      expect(user3.username).to eq('user3')
    end
  end
end
