$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))
require 'foo'
require 'spec'

describe Foo do

  describe "#bar" do
    
    before :each do
      @it = Foo.new
    end

    it "should pass" do
      @it.bar.should == "bar"
    end

    it "should be pending" do
      pending
    end

  end

  describe "#bar" do
    
    it "should fail due to incorrect result" do
      Foo.new.bar.should == "bar bar"
    end
    
  end

  describe "#baz" do

    it "should fail due to undefined method" do
      Foo.new.baz.should == "meow"
    end
    
  end

end
