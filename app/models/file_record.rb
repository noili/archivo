class FileRecord < ActiveRecord::Base
  has_many :steps
  
  def archivate
    step = Step.archivate
    steps.create office: step.office
  end
  
  def save_step
    office = Office.last!
    steps.create! office: office
  end
  
  def create_step
    office = Office.first!
    steps.create office: office
  end
  
  def create
    step.start
  end
  
  after_create :create_step
end
