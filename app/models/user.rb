class User < ApplicationRecord
    validates :username, presence: true, length: {minimum:3, maximum:105}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i;
    validates :email, presence: true, length: {minimum:3, maxium: 105}, format: { with: VALID_EMAIL_REGEX };
    
end