class DocumentsController < ApplicationController
    layout "private"
    before_action :authenticate_user!

    def index
        @documents = Document.all
    end

    def new
        @document = Document.new
    end

    def create
        Document.transaction do
            @document = Document.new(document_params)
            @document.save
            @log = DocumentLog.new do |l|
                l.document_id = @document.id
                l.user_id = current_user.id
                l.area_id = current_user.area_id
                l.comments = @document.comments
            end
            
            if @log.save
                redirect_to documents_path
            else
                render :action => 'new'
            end

        end
    end

    def show
        @document = Document.find(params['id'])        
    end

    def approval
        @status = "inproccess"
        if params[:status] != "true"
            @status = "canceled"
        end
        @document = Document.find(params[:id])
        @document.update_attributes(:accepted => params[:status], :status => @status)
        redirect_to dashboard_path
    end
    
    private

    def document_params
        params.require(:document).permit(:supplier_id, :document_type_id, :number, 
            :date, :currency, :total, :area_id, :comments)
    end

end
