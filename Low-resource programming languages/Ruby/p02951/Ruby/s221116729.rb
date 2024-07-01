require 'pp'

a, b, c = gets.chomp!.split(" ").map(&:to_i)

if c > (a - b)
    puts c - (a -b)
else
    puts 0
end
