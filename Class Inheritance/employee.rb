class Employee
  attr_reader :salary
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end
  
  def bonus(multiplier)
    bonus = @salary * multiplier
  end
  
end

class Manager < Employee
  attr_accessor :employees
  
  def initialize(name, title, salary, boss)
    @employees = []
    super
  end
  
  def bonus(multiplier)
    @employees.map(&:salary).reduce(:+)
  end
end