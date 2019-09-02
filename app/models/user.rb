class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  
  has_secure_password 
  
  validates :password, presence: true,
                       length: {minimum:8,maximum:32},
                       format: { with: /\A[a-z0-9]+\z/i }
                       
  has_many :topics
  has_many :favorites
  has_many :favorite_topics,through: :favorites, source: 'topic'
  
  has_many :comments
end
