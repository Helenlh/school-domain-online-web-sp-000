class School 
  
  def initialize(name)
    @name= name
    @roster= {}
  end 
  
  def name 
    attr_writer :name
  end 
  
   def roster 
    attr_writer :roster
  end
  
  def add_student(student_name, grade)
    if roster[grade]
      @roster[grade] << student_name
    else 
      @roster[grade] = [student_name]
   end
 end  

  def grade(grade)
    roster.fetch(grade)
  end 
  
  def sort
    roster.values.sort { |grade, student_name| grade } 
  end 
end 
  
    