class Category1 < ApplicationRecord
	has_many :contents, dependent: :destroy
end
