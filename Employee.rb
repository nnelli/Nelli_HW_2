class Employee
  def initialize(name:, email:, phone_number:,salary:)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @reviews = []
    @satisfactory = ""
    @department = ""
  end

  def name
    @name
  end

  def email
    @email
  end

  def phone_number
    @phone_number
  end

  def salary
    @salary
  end

  def add_department(name)
    @department = name
  end

  def department
    @department
  end

  def give_raise_dollars(dollars)
    @salary += dollars
  end

  def give_perc_raise(percent)
    @salary = (@salary + (percent/100.0)*@salary).to_i
  end

  def give_review(review)
    @reviews << review
  end

  def reviews
    @reviews
  end

  def mark_satisfactory
    @satisfactory = true
  end

  def mark_unsatisfactory
    @satisfactory = false
  end

  def satisfactory?
    @satisfactory
  end

end
