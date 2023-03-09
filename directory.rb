students = [
{name: "Dr. Hannibal Lecter", cohort: :november, quirk: "innapropriate diet"},
{name: "Darth Vader", cohort: :november, quirk: "heavy breathing"},
{name: "Nurse Ratched", cohort: :november, quirk: "growing darkness"},
{name: "Michael Corleone", cohort: :november, quirk: "taking family too seriously"},
{name: "Alex DeLarge", cohort: :november, quirk: "serious psycho"},
{name: "The Wicked Witch of the West", cohort: :november, quirk: "annoying laughter"},
{name: "Terminator", cohort: :november, quirk: "keeps coming back"},
{name: "Freddy Krueger", cohort: :november, quirk: "has mommy and daddy issues"},
{name: "The Joker", cohort: :november, quirk: "it's all about him"},
{name: "Joffrey Baratheon", cohort: :november, quirk: "sadist"},
{name: "Norman Bates", cohort: :november, quirk: "mommy issues with a side of rage"}
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
  student_count = 0
  until student_count == students.length
  
  # if student[:name].start_with?("T")
  # if student[:name].length < 12
  puts "#{student_count + 1}. #{students[student_count][:name]} is part of the #{students[student_count][:cohort]} cohort and the following quirk: #{students[student_count][:quirk]}. "
  student_count += 1  
end
end
# end
# end

def print_footer(students)
    puts "Overall, we have #{students.count} great students."
end

# students = input_students
print_header
print(students)
print_footer(students)