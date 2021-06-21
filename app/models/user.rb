# frozen_string_literal: true

class User < ApplicationRecord
  enum status: {
    active: 0,
    blocked: 1
  }

  has_many :tweets

  validates_presence_of :first_name, :email, :encrypted_password
end
