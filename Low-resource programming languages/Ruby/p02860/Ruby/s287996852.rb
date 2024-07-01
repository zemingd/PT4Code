require 'pp'

n = gets.chomp!.to_i
s = gets.chomp!

if s.length % 2 != 0
    puts "No"
else
    if s[0, s.length / 2] == s[s.length / 2, s.length / 2]
        puts "Yes"
    else
        puts "No"
    end
end
