require 'pp'

n = gets.chomp!.to_i
s = gets.chomp!

count = 0
s.chars.each_cons(2) do |x, y|
    if x != y
        count += 1
    end
end

puts count + 1
