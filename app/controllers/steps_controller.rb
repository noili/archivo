class StepsController < ApplicationController

  def create
    @step = Step.new step_params
    
    if @step.save
      redirect_to @step.file_record
    else
      render 'new'
    end
  end
  
  private

    def step_params
      params.require(:step).permit(:file_record_id, :office_id, :person_id)
    end
  
end
