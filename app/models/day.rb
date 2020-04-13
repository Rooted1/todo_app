class Day < ApplicationRecord
  has_many :todo_items
  has_many :categories, through: :todo_items
end
