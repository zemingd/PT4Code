command = gets.chomp.split("")
string = ""

command.size.times do |i|
	case command[i]
	when "0" then
		string << "0"
	when "1" then
		string << "1"
	when "B" then
		string.chop!
	else
	end
end
puts string