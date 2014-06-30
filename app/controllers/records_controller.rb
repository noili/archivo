class RecordsController < ApplicationController

  def new
    @record = Record.new
  end

  def create
    @record = Record.new record_params
    #@office = Office.where name: "Mesa de Entrada"
    @step = Step.new
    @step = Ste
    
    if @record.save
      redirect_to @record
    else
      render 'new'
    end
  end

  def show
    @record = Record.find(params[:id])
  end

  def index
    @records = Record.all
  end

  def edit
    @record = Record.find(params[:id])
  end
  
  def update
    @record = Record.find params[:id]
 
    if @record.update record_params
      redirect_to @record
    else
      render 'edit'
    end    
  end
  
  def destroy
    @record = Record.find params[:id]
    @record.destroy
    
    redirect_to records_path
  end

  private

    def record_params
      params.require(:record).permit(:titulo)
    end

end
