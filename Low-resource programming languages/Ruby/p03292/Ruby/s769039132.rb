a = gets.split.map(&:to_i)

a.sort!{|a, b| b <=> a }

sum = 0
(a.length-1).times do |i|
  sum += (a[i+1] - a[i]).abs
end

puts sum
