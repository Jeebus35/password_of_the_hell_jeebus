class User < ApplicationRecord

  
  validates :description, length: { maximum: 500}
  validates :email,presence: true

  belongs_to :city, optional: true
  has_many :gossips
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
  has_secure_password
end