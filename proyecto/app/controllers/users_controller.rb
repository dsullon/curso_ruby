class UsersController < ApplicationController
    layout 'private'
    before_action :authenticate_user!
    
    def dashboard
        @documents = Document.where(accepted: false, area_id: 
            current_user.area_id, status: "registered")
    end
end
