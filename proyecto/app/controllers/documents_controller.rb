class DocumentsController < ApplicationController
    layout "private"
    before_action :authenticate_user!

    def new
        @document = Document.new
    end

end
