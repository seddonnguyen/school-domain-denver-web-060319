# code here!
class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    temp = {}
    @roster.each do |key, value|
      temp[key] = value.sort
    end
    temp
  end
end