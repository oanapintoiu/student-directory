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
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
      # add the student hash to the array
      students << {name: name, cohort: :november}
      puts "Now we have #{students.count} students"
      # get another name from the user
      name = gets.chomp
    end
    # return the array of students
    students
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

def interactive_menu
  students = []
  loop do
# 1. print the menu and ask the user what to do
puts "1. Input the students"
puts "2. Show the students"
puts "9. Exit"
# read the input and put it into a variable
selection = gets.chomp
# do what the user has asked
case selection
when "1"
  # input students
  students = input_students
when "2"
  # show the students
 print_header
print(students)
print_footer(students)
when "9"
  # cause the program to terminate
  exit 
else
  puts "I don't know what you meant, try again."
end
# 2. read the input and save it into a variable
# 3. do what the user has asked
# 4. repeat from step 1 
  end
end 

interactive_menu
