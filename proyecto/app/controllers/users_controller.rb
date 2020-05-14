class UsersController < ApplicationController
    layout 'private'
    before_action :authenticate_user!
    
    def dashboard
        
    end
end
