require 'pp'

d,t,s = gets.split.map(&:to_i)

if d - t * s > 0
    puts "No"
else
    puts "Yes"
end
