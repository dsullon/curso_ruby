class Document < ApplicationRecord
    has_many :document_log
    belongs_to :supplier
    belongs_to :document_type
    belongs_to :area
    enum status:[:registered, :inproccess, :completed, :canceled]


    def last_area
        @logs = document_log.order(created_at: :desc)
        @log = @logs.first
        @log.area
    end 
end 
