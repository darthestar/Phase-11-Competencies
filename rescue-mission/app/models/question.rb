class Question < ActiveRecord::Base
has_many :answers

validates :title, length: {minimum: 20}
validates :description, length: {maximum: 500}
end
