require 'test_helper'

class StepsControllerTest < ActionController::TestCase

  test 'When incomplete person redirect to edit' do
    file_record = file_records(:frejemplo)
    step_hash = {person: people(:incompleto)}
    step = Step.new step_hash
    post :create, step: step_hash, file_record_id: file_record.id
    assert_redirected_to edit_person_path step.person
  end
  
end
