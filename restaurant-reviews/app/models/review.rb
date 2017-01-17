class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, presence: true, numericality: { greater_than: 0, less_than: 6, :message => "must be between 1 - 5"}
  validates :body, :presence => { :message => "can't be blank" }
end
