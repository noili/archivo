class PeopleController < InheritedResources::Base

  def person_not_completed_for_step person
    if !person.completed?
      redirect_to edit_person_path
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :dni)
  end

end
