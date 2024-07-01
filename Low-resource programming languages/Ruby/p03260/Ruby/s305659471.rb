a,b = gets.split.map(&:to_i)
check = 0
(1..3).each do |i|
  check += 1 if (a * b * i).odd?
end
if check > 0
  puts :Yes
else
  puts :No
end