require 'pp'

s = gets.chomp!
x = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT']

if 7 - x.find_index(s) == 0
    puts 7
else
    puts 7 - x.find_index(s)
end
