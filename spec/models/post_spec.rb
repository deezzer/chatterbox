require 'spec_helper'

describe Post do

  describe ".validations" do
    describe "#content" do
      it "should be required" do
        FactoryGirl.build(:post, :content => nil).should_not be_valid
      end
    end

  end

  describe "posts order" do
    it "should list posts in reverse chronological order  "  do
      @post1 = FactoryGirl.create(:post)
      @post2 = FactoryGirl.create(:post)
      @post3 = FactoryGirl.create(:post)

      Post.all.map(&:id).should eq([@post3.id, @post2.id, @post1.id])
    end
  end

  describe "connect_name_to_user" do
    it "connects name to user" do
      @post = FactoryGirl.create(:post, :name => "Joe")
      @post.user.name.should == "Joe"

    end
  end

end
