class Step < ActiveRecord::Base

  belongs_to :office
  belongs_to :person
  belongs_to :file_record
<<<<<<< HEAD
  
  def self.start
    office = Office.find_or_create_by name: 'Mesa de Entrada'
    step = step.new office
  end
  
  def archivate
    self.office = Office.archivate
    save
=======

  def self.archivate
    create office: Office.archive_office
>>>>>>> devise
  end
  
  def first_step
    self.office = Office.start_office
    save
  end
  
end
