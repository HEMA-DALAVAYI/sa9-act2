require 'code_class'

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      string1 = StringWrapper.new('Python')
      expect(string1.reverse).to eq('nohtyP')
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      string2 = StringWrapper.new('Ruby')
      expect(string2.upcase).to eq('RUBY')
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      string3 = StringWrapper.new('JAVASCRIPT')
      expect(string3.downcase).to eq('javascript')
    end
  end
end
