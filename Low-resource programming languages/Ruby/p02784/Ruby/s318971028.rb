require 'pp'

h, n = gets.chomp!.split.map(&:to_i)
a_n = gets.chomp!.split.map(&:to_i)

sum = a_n.inject {|sum , n| sum += n }
if sum >= h
    puts "Yes"
else
    puts "No"
end
