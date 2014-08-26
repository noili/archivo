require 'test_helper'

class StepsControllerTest < ActionController::TestCase
  
  test 'cuando la persona este incompleta redirije al edit' do
    file_record = file_records(:frejemplo)
    step = {email: 'marty@mcfly.com', file_record_id: file_record.id}
    person = people(:incompleto)
    post :create, step: step, file_record_id: file_record.id
    assert_redirected_to edit_person_path(person.id)
  end
  
  test 'when inexistant person create and redirect to edit that person' do
    file_record = file_records(:procrear)
    step = {email: 'inexistant@email.com', file_record_id: file_record.id}
    post :create, step: step, file_record_id: file_record.id
    person = Person.find_by({email: 'inexistant@email.com'})
    assert_redirected_to edit_person_path(person.id)
  end
  
end
