require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: FALSE) }

   describe "attributes" do
     it "has title, body and resolved attributes" do
       expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved: FALSE)
     end
   end
end
