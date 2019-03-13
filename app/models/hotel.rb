class Hotel < ApplicationRecord
  has_many :rooms, dependent :destroy
  validates :name,
      presence: true,
      length: { minimum: 5 }
end
