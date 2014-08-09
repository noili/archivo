class Step < ActiveRecord::Base
  
  attr_accessor :email

  belongs_to :office
  belongs_to :person
  belongs_to :file_record
  
  before_create :save_person_by_email
  
  def archivate
    self.office = Office.archivate
    save
  end

  def self.archivate
    create office: Office.archive_office
  end
  
  def first_step
    self.office = Office.start_office
    save
  end
  
  private
  
  def save_person_by_email
    self.person = Person.find_or_create_by email: email if email
  end

end
