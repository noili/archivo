class PeopleController < InheritedResources::Base

  private

    def person_params
      params.require(:person).permit(:name, :dni)
    end

end
