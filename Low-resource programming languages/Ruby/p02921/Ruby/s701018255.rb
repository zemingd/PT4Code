require 'pp'

s = gets.chomp!.chars
t = gets.chomp!.chars

count = 0
3.times do |i|
    if s[i] == t[i]
        count += 1
    end
end

puts count
