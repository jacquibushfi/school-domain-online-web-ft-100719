class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    # if @roster[grade] != nil
    #   @roster[grade] << name
    # else
    #   @roster[grade] = [name]
    # end
    # ||=“double-pipe equals” is an operator that assigns a value, much like = or our classic assignment operator, but will only complete the assignment if the left side of our operation returns false or nil.
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end 