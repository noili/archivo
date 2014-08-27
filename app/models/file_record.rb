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
    
  def self.search keyword, office = nil
    if office
      search_by_keyword(keyword) & search_by_office(office)
    else
      search_by_keyword(keyword)
    end
  end

  private
  
  def self.search_by_keyword keyword
    FileRecord.where("title like '%#{ keyword }%'")
  end
  
  def self.search_by_office office
    file_records = []
    FileRecord.all.each do |file_record|
      file_record.steps.each do |step|
        if step.office.name == office
          file_records << file_record
        end
      end
    end
    file_records
  end

end
