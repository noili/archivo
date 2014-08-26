require 'test_helper'

class StepsControllerTest < ActionController::TestCase
  
  test 'cuando la persona este incompleta redirije al edit' do
    file_record = file_records(:frejemplo)
    step = {email: 'marty@mcfly.com', file_record_id: file_record.id}
    person = people(:incompleto)
    post :create, step: step, file_record_id: file_record.id
    assert_redirected_to edit_person_path(person.id)
  end
  
end
