class Comment < ApplicationRecord
  has_many :user
  has_many :topic
end
