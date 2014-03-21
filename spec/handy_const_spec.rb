require 'spec_helper'

describe HandyConst do
  let(:klass) { Class.new }

  subject { klass }

  describe "#const" do
    before :each do
      klass.extend HandyConst
      @foo = 'foo'
      klass.const :foo, @foo
    end

    it "freeze passed value" do
      expect(@foo).to be_frozen
    end

    it "defines const" do
      expect(klass::FOO).to eq @foo
    end

    it "defines class method" do
      expect(klass.foo).to eq @foo
    end

    it "defines instance method" do
      expect(klass.new.foo).to eq @foo
    end
  end

  context "Module not extended" do
    it "not available in any class" do
      should_not respond_to :const
    end
  end

  context "Module extended" do
    before :all do
      HandyConst.extend_module!
    end

    it "available in any class" do
      should respond_to :const
    end
  end
end
