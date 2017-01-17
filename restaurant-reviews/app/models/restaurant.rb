class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, numericality: {only_integer: true}
  validates :zip, length: {minimum: 5, maximum: 5, :message => "is the wrong length (should be 5 characters)"}
end
