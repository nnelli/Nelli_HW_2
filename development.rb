require './Department.rb'

review_file = File.open('./reviews.txt')

reviews = review_file.read.split("\n\n")

nick = Employee.new(name: "Nick", email: "nick@nick.com", phone_number: "2", salary: 60000)

adam = Employee.new(name: "Adam", phone_number: "30", salary: 40000, email: "adam@adam.com")

michael = Employee.new(salary: 50000, name: "Michael", email: "michael@michael.com", phone_number: "30")


puts "The employee's name is #{nick.name}"

puts "Nick's salary is $#{nick.salary}"

awesome = Department.new(name: "Awesome Department")

puts "The department's name is #{awesome.name}"

awesome.add_employee(nick)

awesome.add_employee(adam)

awesome.add_employee(michael)

puts "Nick works in #{nick.department}."

puts "The employees in #{awesome.name} are: "
awesome.list_employees

puts "The total salary of #{awesome.name} is $#{awesome.total_salary}"

nick.give_perc_raise(20)

puts "Nick was given a 20% raise, his new salary is $#{nick.salary}"

nick.give_review(reviews[2])

nick.give_review("Still the perfect employee.")

adam.give_review(reviews[1])

michael.give_review(reviews[0])

puts "Nick was given a review, his reviews read: "
puts nick.reviews

puts "Is Nick a satisfactory employee?"
puts nick.satisfactory?

puts "Is Adam a satisfactory employee?"
puts adam.satisfactory?

puts "Is Michael a satisfactory employee?"
puts michael.satisfactory?

puts "Lets give $11500 to the #{awesome.name} for raises, but only for satisfactory employees."
awesome.give_raises(11500)

puts "Nick's new salary is $#{nick.salary}"
puts "Adam's new salary is $#{adam.salary}"
puts "Michael's new salary is $#{michael.salary}"

puts "The total salary of #{awesome.name} is now $#{awesome.total_salary}"
