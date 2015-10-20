class Question < ActiveRecord::Base

  has_many :answers

  validates :inquiry, :presence => true
  validates :user, :presence => true
end
