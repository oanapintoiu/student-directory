students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]

puts "The students of Villain Academy"
puts "----------------------"

students.each do |student|
    puts student
end
# the value of the first student will be assigned to student
# then it will execute the block and puts the name of the studen 
# on the screen. then ruby will perform a second iteration
# assigning the next name/value to students and so on until the end
# of the array.
