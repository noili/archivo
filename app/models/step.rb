class Step < ActiveRecord::Base
  belongs_to :office
  belongs_to :person
  belongs_to :file_record, class_name: "Record", foreign_key: "record_id"
end
