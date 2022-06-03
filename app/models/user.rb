class User < ApplicationRecord
  has_many :topics
  has_many :apprenticeships
  validates :first_name, :last_name, :email, :gender, :birth_date, presence: true
  validates :first_name, length: { minimum: 2 }
  validates :gender, inclusion: { in: %w(male female), message: "%{value} is not a gender" }
  validates :email, uniqueness: true

  enum gender: { male: 0, female: 1 }

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
