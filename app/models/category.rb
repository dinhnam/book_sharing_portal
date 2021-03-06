class Category < ApplicationRecord
  has_many :lists, as: :info, class_name: Category.name, dependent: :destroy
  has_many :books, through: :lists, source_type: Category.name, source: :book
end
