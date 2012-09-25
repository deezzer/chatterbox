require 'spec_helper'

describe Post do

  describe ".validations" do
    describe "#body" do
      it "should be required" do
        FactoryGirl.build(:post, :body => nil).should_not be_valid
      end
    end
  end

  describe "posts order" do
    it "should list posts in reverse chronological order"  do
      posts = []
      10.times { |i| posts[i] = FactoryGirl.create(:post).id }
      Post.pluck(:id).should eq(posts.reverse)
    end
  end

  describe "connect_name_to_user" do
    it "connects name to user" do
      @post = FactoryGirl.create(:post, :poster => "Joe")
      @post.user.name.should == "Joe"
    end
  end

end
