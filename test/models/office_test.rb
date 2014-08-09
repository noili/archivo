require 'test_helper'

class OfficeTest < ActiveSupport::TestCase

  #test 'archivate deberia crear un step con la oficina Archivo' do
  #  assert false, 'pending'
  #end
  
  test "start_office returns an office" do
    office = Office.start_office
    assert office.class == Office
  end
  
end
