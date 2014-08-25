require 'test_helper'

class FileRecordTest < ActiveSupport::TestCase

  test "Cuando creo FileRecord, tiene que tener un step con un office" do
    file_record = FileRecord.create
    assert file_record.steps.count == 1
  end
  
  test 'search by keyword' do
    file_records = FileRecord.search('procrear')
    assert !file_records.empty?
  end
  
end
