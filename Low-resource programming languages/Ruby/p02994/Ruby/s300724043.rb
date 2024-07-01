num,taste = gets.split.map(&:to_i)

tastes = []
num_a = (1..num).to_a

num_a.each do |n|
  tastes << taste + n - 1
end

if tastes.include?(0)
  puts tastes.sum
elsif 1 <= tastes.min
  puts tastes.sum - tastes.first
else tastes.max <= -1
  puts tastes.sum - tastes.last
end
