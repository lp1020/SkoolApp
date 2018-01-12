class Student < ApplicationRecord
  belongs_to :course

  has_one :teacher, through: :course
  def info
    "name: #{name} | age: #{age} | grade: #{grade}"
  end
end
