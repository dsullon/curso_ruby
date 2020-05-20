class DocumentLogsController < ApplicationController
    layout "private"
    before_action :authenticate_user!

    def new
        @document = Document.find(params['id'])
        @log = DocumentLog.new
    end

    def create
        DocumentLog.transaction do
            @log = DocumentLog.new(log_params)
            @document = Document.find(@log.document_id)
            @log.user_id = current_user.id
            @log.area_id = current_user.area_id
            @log.save

            @status = "inproccess"
            if current_user.area.code == "TSR"
                @status = "completed"
            end

            if @document.update_attributes(:status => @status)
                redirect_to documents_path
            else
                render :action => 'new'
            end
        end
    end

    private

    def log_params
        params.require(:log).permit(:document_id, :comments)
    end
end
