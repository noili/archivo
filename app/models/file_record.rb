class FileRecord < ActiveRecord::Base
  has_many :steps, dependent: :destroy
  
  def archivate
    #steps << Step.archivate
    steps.build.archivate
  end
  
  def save_step
    office = Office.last!
    steps.create! office: office
  end
  
  def create_first_step
    steps.build.first_step
  end
  
  def create
    step.start
  end
  
  after_create :create_first_step
  
end
