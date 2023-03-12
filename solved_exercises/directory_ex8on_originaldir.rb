# 8. Once you complete the previous exercise, change the way the users are displayed: 
# print them grouped by cohorts. 
# To do this, you'll need to get a list of all existing cohorts 
#   (the map() method may be useful but it's not the only option), 
#   iterate over it and only print the students from that cohort.

students = [
{name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november},
]

def input_students
  sorted_by_month = {}
  # print students grouped by cohorts
  students.each do |student|
      month = student[:month]
      name = student[:name]
      if sorted_by_month[month] == nil
          sorted_by_month[month] = [name]
      else
          sorted_by_month[month].push(name)
      end
  end
    sorted_by_month.each do |month|
      puts month
    end
  end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students."
end

print_header
print(students)
print_footer(students)