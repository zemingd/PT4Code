
arr = []

while true
  sum = gets.split("").map(&:to_i).inject{ |val, mem| val + mem }
  break if sum == 0
  arr << sum
end

puts arr