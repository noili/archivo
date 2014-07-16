class Person < ActiveRecord::Base
  has_many :steps
  
  validates :name, presence: true, length: { minimum: 3 }
  validates :dni, presence: true, length: { minimum: 7 }
end
