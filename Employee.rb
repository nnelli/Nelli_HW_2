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

  def satisfactory_review(review)
    if /only concerns/ =~ review
      "yes"
    elsif /great asset/ =~ review
      "yes"
    elsif /perfect/ =~ review
      "yes"
    elsif /always willing to help others/ =~ review
      "yes"
    else
      "no"
    end
  end

  def satisfactory?
    review_ratings = []

    @reviews.each do |r|
      review_ratings << satisfactory_review(r)
    end

    if review_ratings.include? "no"
      @satisfactory = false
    else
      @satisfactory = true
    end

  end

end
