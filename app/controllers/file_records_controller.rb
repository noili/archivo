class FileRecordsController < InheritedResources::Base

  def archivate
    @file_record = FileRecord.find(params[:file_record_id]).archivate
    redirect_to file_records_path
  end

  private

    def file_record_params
      params.require(:file_record).permit(:title)
    end

end
