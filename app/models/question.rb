class Question < ActiveRecord::Base
  validates :inquiry, :presence => true
  validates :user, :presence => true
end
