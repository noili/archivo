class FileRecord < ActiveRecord::Base
  has_many :steps
  
  def save_step
    office = Office.last!
    steps.create! office: office
  end
  
  after_save :save_step
end
