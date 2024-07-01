s = gets.chomp.split("").map(&:to_i)
length = s.length
sum = []

(0..length-3).each do |number|
  sum.push(s.slice(number,3).join.to_i)
end

answer = (sum.first - 753).abs

sum.each do |min|
  answer = (min - 753).abs if answer >= (min - 753).abs
end

puts answer