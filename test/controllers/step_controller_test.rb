require 'test_helper'

class StepsControllerTest < ActionController::TestCase

  test 'When incomplete person redirect to edit' do
    file_record = file_records(:frejemplo)
    step_hash = {person: people(:incompleto)}
    step = Step.new step_hash
    post :create, step: step_hash, file_record_id: file_record.id
    assert_redirected_to edit_person_path step.person
  end
  
  test 'cuando la persona' do
    file_record = file_records(:frejemplo)
    step_hash = {email: 'emmet@mail.com', file_record_id: file_record.id}
    person = Person.find_by_email 'emmet@mail.com'
    post :create, step: step_hash
    assert_redirected_to edit_person_path
  end
  
end
