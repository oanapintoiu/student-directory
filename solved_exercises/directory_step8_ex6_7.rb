# 6. Research how the method center() of the String class works.
# Use it in your code to make the output beautifully aligned.

# 7. In the input_students method the cohort value is hard-coded.
# How can you ask for both the name and the cohort?
# What if one of the values is empty?
# Can you supply a default value?
# The input will be given to you as a string?
# How will you convert it to a symbol?
# What if the user makes a typo?

students = [
  { name: "Dr. Hannibal Lecter", cohort: :november },
  { name: "Darth Vader", cohort: :november },
  { name: "Nurse Ratched", cohort: :november },
  { name: "Michael Corleone", cohort: :november },
  { name: "Alex DeLarge", cohort: :november },
  { name: "The Wicked Witch of the West", cohort: :november },
  { name: "Terminator", cohort: :november },
  { name: "Freddy Krueger", cohort: :november },
  { name: "The Joker", cohort: :november },
  { name: "Joffrey Baratheon", cohort: :november },
  { name: "Norman Bates", cohort: :november },
]

def input_students
  puts "Please enter the names of the students:"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []

  months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October",
            "November", "December"]
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    puts "What is their country of birth?".center(20)
    country = gets.chomp

    puts "Please enter the cohort month:".center(20)
    cohort = gets.chomp

    while !months.include?(cohort) do
      puts "Please enter a valid month:".center(20)
      cohort = gets.chomp
    end
    cohort = "Unknown" if cohort.empty?
    students << { name: name, cohort: cohort, country: country }
    puts "Now we have #{students.count} students".center(20)
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(20)
  puts "-------------"
end

def print(students)
  student_count = 0
  until student_count == students.length

    # # if student[:name].start_with?("T")
    # # if student[:name].length < 12
    puts "#{student_count + 1}. #{students[student_count][:name]}, born in #{students[student_count][:country]}, is part of the #{students[student_count][:cohort]} cohort".center(30)
    student_count += 1
  end
end
# end
# end

def print_footer(students)
  puts "Overall, we have #{students.count} great students.".center(20)
end

students = input_students
print_header
print(students)
print_footer(students)
