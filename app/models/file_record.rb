class FileRecord < ActiveRecord::Base
  has_many :steps, dependent: :destroy
  
  after_create :create_first_step
  
  def archivate
    steps.build.archivate
  end
  
  def save_step
    office = Office.last!
    steps.create! office: office
  end
  
  def create_first_step
    steps.build.first_step
  end

end
