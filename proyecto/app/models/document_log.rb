class DocumentLog < ApplicationRecord
    belongs_to   :document
    belongs_to   :user
    belongs_to   :area
    
end
