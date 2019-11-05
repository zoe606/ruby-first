class Category < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4 }
  #attributes name harus diisi minial 4 char
  has_many :homeworks
end
