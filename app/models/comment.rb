class Comment < ApplicationRecord

  belongs_to :prototype
  belongs_to :user 

  private
  validates :content, presence: true

end
