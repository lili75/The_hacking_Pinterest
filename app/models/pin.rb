class Pin < ApplicationRecord
	belongs_to :user, required: false
end
