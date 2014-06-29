class Office < ActiveRecord::Base
  has_many :steps
  validates :name, presence: true,
                    length: { minimum: 2 }
end
