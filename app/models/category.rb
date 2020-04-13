class Category < ApplicationRecord
  has_many :todo_items
  has_many :days, through: :todo_items
end
