require 'test_helper'

class FileRecordsControllerTest < ActionController::TestCase
  
  test 'debe existir el index' do
    #binding.pry
    get :index
    assert_response :success
    assert_not_nil assigns :file_records
  end

  test 'debe existir el new'  do
    get :new
    assert_response :success
  end
  
  test 'must exist view for search' do
    get :search
    assert_response :success
  end
  
end
