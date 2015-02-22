require 'rails_helper'

describe User do
  it "should be invalid without a first name" do
    user = User.new
    expect(user).to be_invalid
    expect(user.errors[:firstname]).to eq ["can't be blank"]
  end
  it "should be invalid without a last name" do
    user = User.new(firstname: "Ciara")
    expect(user).to be_invalid
    expect(user.errors[:lastname]).to eq ["can't be blank"]
  end
  it "should have a full_name method that returns the user's first and last name (as a string)" do
    user = User.create(firstname: "Ciara", lastname: "Foran")
    expect(user.full_name).to eq "Ciara Foran"
  end
  it "should be invalid without an email address" do
    user = User.new(firstname: "Ciara", lastname: "Foran")
    expect(user).to be_invalid
    expect(user.errors[:email]).to eq ["can't be blank"]
  end
  it "should be invalid if a user tries to sign up with an email address that already exists in the database" do
    user1 = User.create(firstname: "Ciara", lastname: "Foran", email: "cfo@email.com")
    expect(User.count).to eq 1
    user2 = User.new(firstname: "Caitlin", lastname: "Forman", email: "cfo@email.com")
    expect(user2).to be_invalid
    expect(user2.errors[:email]).to eq ["has already been taken"]
  end
end
