require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "#title" do
    it "should accept a string" do
      post = Post.create!
      post.title = "Hello"
      expect(post.title).to eq "Hello"
    end
  end

  describe "#comments" do
    it "should allow comments" do
      post = Post.create!
      post.comments.create!
      expect(post.comments.length).to eq 1
    end
  end
end
