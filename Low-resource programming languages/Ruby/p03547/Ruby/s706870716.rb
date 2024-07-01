line = gets.chomp

tokens = line.split(" ")

if tokens[0] < tokens[1]
 puts "<"
elsif tokens[0] > tokens[1]
 puts ">"
else
 puts "="
end