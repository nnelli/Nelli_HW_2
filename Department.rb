require './Employee.rb'

class Department
  def initialize(name:)
    @name = name
    @employees = []
  end

  def name
    @name
  end

  def add_employee(e)
    @employees << e
    e.add_department(@name)
  end

  def list_employees
    @employees.each do |e|
      puts e.name
    end

  end

  def total_salary
    tot_salary = 0
    @employees.each do |e|
      tot_salary += e.salary
    end

    tot_salary
  end

  def give_raises(dollars)
    employees_to_get_raises = []

    @employees.each do |e|
      if e.satisfactory? == "Yes"
        employees_to_get_raises << e
      end
    end

    employees_to_get_raises.each do |em|
      em.give_raise_dollars(dollars/employees_to_get_raises.count)
    end
  end

end
