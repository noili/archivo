require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  
  test "persona completa" do
    assert Person.new(email: 'algo@algo', name: 'algo', dni: 888).completed?
  end
  
  test "persona incompleta" do
    assert !Person.new(email: 'algo@algo', dni: 888).completed?
  end
  
end
