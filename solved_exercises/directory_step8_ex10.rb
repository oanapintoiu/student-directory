# 10. We've been using the chomp() method to get rid of the last return character.
# Find another method among those provided by the String class that
# could be used for the same purpose (although it will require passing some arguments).

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
  name = gets.strip
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    puts "What is their country of birth?"
    country = gets.strip

    puts "Please enter the cohort month: "
    cohort = gets.strip

    while !months.include?(cohort) do
      puts "Please enter a valid month:"
      cohort = gets.strip
    end
    cohort = "Unknown" if cohort.empty?
    students << { name: name, cohort: cohort, country: country }
    students.length == 1 ? (puts "Now we have #{students.count} student.") : (puts "Now we have #{students.count} students.")
    # get another name from the user
    name = gets.strip
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  student_count = 0
  until student_count == students.length

    puts "#{student_count + 1}. #{students[student_count][:name]}, born in #{students[student_count][:country]}, is part of the #{students[student_count][:cohort]} cohort".center(10)
    student_count += 1

  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

students = input_students
print_header
print(students)
print_footer(students)
