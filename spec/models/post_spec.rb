require 'rails_helper'

RSpec.describe Post, :type => :model do
it "should create a new post without saving to database" do
  post1 = Post.new(:title => "SF Marathon Underway", :description => "Expect traffic throughout the city", :author => "Siejen")
  expect(post1.new_record?).to eq(true)
end

it "should test that save works" do
post1 = Post.new(:title => "SF Marathon Underway", :description => "Expect traffic throughout the city", :author => "Siejen") 
expect(post1.new_record?).to eq(true)
post1.save
expect(post1.new_record?).to eq(false)
end

it "should test that save works differently" do
Post.create(:title => "SF Marathon Underway", :description => "Expect traffic throughout the city", :author => "Siejen")
post1 = Post.find_by_author("Siejen");
expect(post1).not_to eq(nil)
end 

end