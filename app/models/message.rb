class Message < ApplicationRecord
  belongs_to :user

  validates :comment, :user, presence: true
end
