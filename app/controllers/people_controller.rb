class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    @person = Person.new person_params
    if @person.save
      puts 'salvado'
    else
      puts 'error al salvar'
  end

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  private

    def person_params
      params.require(:person).permit(:name, :dni)
    end

end
