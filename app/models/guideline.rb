class Guideline < ApplicationRecord
	has_many :category1s, dependent: :destroy
end
