class Step < ActiveRecord::Base

  belongs_to :office
  belongs_to :person
  belongs_to :file_record

  def self.archivate
    create office: Office.archive_office
  end
  
  def first_step
    self.office = Office.start_office
    save
  end
  
end
