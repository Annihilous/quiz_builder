# Takes user imput to build a quize of Yes or No questions
# Clears the terminal and starts the quiz, then gives score

# INPUT METHOD
def input
	q = ""
	hash = {}
	"Enter questions. Enter 'done' when you are finished."
	while q != 'Done'
		puts "Question:"
		q = gets.chomp.capitalize
			if q == 'Done'
				break
			end
		print "Answer (Y/N): "
		a = gets.chomp.upcase
			unless a[0] == 'Y' || a[0] == 'N'
				print "Answer must be Yes or No. Try again: "
				a = gets.chomp.upcase
			end
		hash[q] = a
	end
	return hash
end
# INPUT METHOD

question_bank = input

puts "Now it's time for someone to take your quiz! Press Enter key to continue."
clear = gets.chomp

if clear == ""
	system "clear"
end

puts "Welcome to the quiz. You will be presented with a series of Yes or No questions. Enter 'Y' for yes and 'N' for no."

questions = question_bank.length
score = 0
it = 0

# until it == questions do
# 	puts question_bank[0]
# 	it +=1
# end

question_bank.each do | key, value |
	puts key
	print "Answer: "
	if gets.chomp.upcase[0] == value
		puts "Right!"
		score += 1
	else
		puts "fail"
	end
end
puts "The quiz is complete."
grade = (100*score/questions)
puts "You correctly answered #{score} out of #{questions} questions, earning grade of #{grade}%."
if score >= 90
	puts "Your grade is A. Congratulations."
elsif score >= 60
	puts "You did not score an A. You must study harder."
else
	puts "You have failed."
end

