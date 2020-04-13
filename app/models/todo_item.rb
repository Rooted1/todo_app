class TodoItem < ApplicationRecord
  belongs_to :category
  belongs_to :day 
end
