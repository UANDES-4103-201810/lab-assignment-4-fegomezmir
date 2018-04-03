class User < ApplicationRecord
  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets
	validates :email , format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Error" }
	validates :password, length: {in: 9..12}
	validates :phone, length: {in: 8..12}, format:{with: /[0-9]/}
end
