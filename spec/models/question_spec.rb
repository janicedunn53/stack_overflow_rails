require 'rails_helper'

describe Question do
  it { should validate_presence_of :inquiry }
  it { should validate_presence_of :user }

  it 'allows users to input a new question' do
    question = FactoryGirl.create(:question)
    question.inquiry.should eq "How old is the moon?"
  end
end
