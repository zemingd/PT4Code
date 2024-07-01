require 'pp'

n = gets.to_i
digits = n.to_s.chars.map(&:to_i)
if n % digits.inject(&:+) == 0
    puts "Yes"
else
    puts "No"
end
