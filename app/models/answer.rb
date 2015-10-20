class Answer < ActiveRecord::Base

  belongs_to :question

  validates :response, :presence => true
  validates :user, :presence => true

end
