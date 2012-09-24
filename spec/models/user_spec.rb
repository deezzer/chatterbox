require 'spec_helper'

describe User do

  describe ".validations" do
    describe "#name" do
      it "should be required" do
        FactoryGirl.build(:user, :name => nil).should_not be_valid
      end
    end
  end

end
