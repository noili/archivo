class FileRecordsController < ApplicationController

  before_action :authenticate_user!

  def new
    @file_record = FileRecord.new
  end

  def create
    @file_record = FileRecord.new file_record_params

    if @file_record.save
      redirect_to @file_record
    else
      render 'new'
    end
  end

  def show
    @file_record = FileRecord.find(params[:id])
    @step = Step.new
  end

  def index
    @file_records = FileRecord.all
  end

  def edit
    @file_record = FileRecord.find(params[:id])
  end
  
  def update
    @file_record = FileRecord.find params[:id]
 
    if @file_record.update file_record_params
      redirect_to @file_record
    else
      render 'edit'
    end    
  end
  
  def archivate
    @file_record = FileRecord.find(params[:file_record_id]).archivate
    redirect_to file_records_path
  end
  
  def destroy
    @file_record = FileRecord.find params[:id]
    @file_record.destroy
    
    redirect_to file_records_path
  end

  private

    def file_record_params
      params.require(:file_record).permit(:title)
    end

end
