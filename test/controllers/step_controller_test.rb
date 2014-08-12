require 'test_helper'

class StepsControllerTest < ActionController::TestCase

  test 'When incomplete person redirect to edit' do
    file_record = file_records(:frejemplo)
    step_hash = {person: people(:incompleto), file_record: file_record}
    step = Step.new step_hash
    #post "file_records/#{file_record.id}/steps"#:create, step: step_hash
    post :create
    assert_redirected_to edit_person_path step.person
  end
  
end
