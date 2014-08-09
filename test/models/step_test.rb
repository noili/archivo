require 'test_helper'

class StepTest < ActiveSupport::TestCase

  test "asignar persona por email" do
    step = Step.create email: 'algo@algo'
    assert step.person.email == 'algo@algo'
  end
  
end
