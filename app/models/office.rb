class Office < ActiveRecord::Base
  
  has_many :steps
  
  def self.start_office
    Office.find_or_create_by name: 'Mesa de entrada'
  end
  
  validates :name, presence: true,
                    length: { minimum: 2 }
end
