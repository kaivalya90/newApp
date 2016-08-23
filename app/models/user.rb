class User < ApplicationRecord

has_secure_password

  has_many :conversations, :foreign_key => :sender_id
end
