require './Department.rb'

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

nick.give_perc_raise(10)

puts "Nick was given a 10% raise, his new salary is $#{nick.salary}"

nick.give_review("Best employee ever")

puts "Nick was given a review, his reviews read: "
puts nick.reviews

nick.mark_satisfactory

michael.mark_satisfactory

adam.mark_unsatisfactory

puts "Is Nick a satisfactory employee?"
puts nick.satisfactory?

puts "Is Adam a satisfactory employee?"
puts adam.satisfactory?

puts "Is Michael a satisfactory employee?"
puts michael.satisfactory?

puts "Lets give $2500 to the #{awesome.name} for raises, but only for satisfactory employees."
awesome.give_raises(2500)

puts "Nick's new salary is $#{nick.salary}"
puts "Adam's new salary is $#{adam.salary}"
puts "Michael's new salary is $#{michael.salary}"

puts "The total salary of #{awesome.name} is now $#{awesome.total_salary}"
