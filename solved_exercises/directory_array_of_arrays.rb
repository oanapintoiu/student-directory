students = [
  ["Dr. Hannibal Lecter", :november],
  ["Darth Vader", :november],
  ["Nurse Ratched", :november],
  ["Michael Corleone", :november],
  ["Alex DeLarge", :november],
  ["The Wicked Witch of the West", :november],
  ["Terminator", :november],
  ["Freddy Krueger", :november],
  ["The Joker", :november],
  ["Joffrey Baratheon", :november],
  ["Norman Bates", :november],
]

def print_header
  puts "The students of Villain Academy"
  puts "----------------------"
end

def print(students)
  students.each do |student|
    puts "#{student[0]} (#{student[1]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

print_header
print(students)
print_footer(students)
# the value of the first student will be assigned to student
# then it will execute the block and puts the name of the studen
# on the screen. then ruby will perform a second iteration
# assigning the next name/value to students and so on until the end
# of the array.
