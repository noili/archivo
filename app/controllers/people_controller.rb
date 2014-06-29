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
  
end
