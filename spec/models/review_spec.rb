require 'spec_helper'

describe Review do

  before :each do
    User.create(email: 'harry@ga.co', password: '1234', password_confirmation: '1234', first_name: 'Harry', last_name: 'Ng')
  end

  context "the system should auto-generate a reviewID when a post is saved" do
    it "is invalid without a reviewID "
    it "is valid with a reviewID"

  describe "both a guideID and rookie_ID should be present as the reviewer and reviewee"
    context "reviewer and reviewee fields cannot be blank" do
      it "is invalid without both reviewer and reviewee"
      it "is valid when both reviewer and reviewee fields are completed"

  describe "the reviewer and reviewee cannot be the same"
    context "a reviewer cannot be the same person as the reviewee"
      it "is invalid if the reviewer is the same as the reviewee"
      it "is invalid if the reviewee is the same as the reviewer"
    end
end
