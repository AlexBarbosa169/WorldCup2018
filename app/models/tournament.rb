class Tournament < ApplicationRecord
	has_many :groups
	has_many :playoffs
	
	accepts_nested_attributes_for :groups, reject_if: :all_blank, allow_destroy: true	
	accepts_nested_attributes_for :playoffs, reject_if: :all_blank, allow_destroy: true
end
