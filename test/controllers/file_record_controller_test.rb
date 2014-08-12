require 'test_helper'

class FileRecordsControllerTest < ActionController::TestCase
  
  def setup
    sign_in users :emmet
  end
  
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

end
