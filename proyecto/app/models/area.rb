class Area < ApplicationRecord
    has_many    :user
    has_many    :document
    has_many    :document_log
end
