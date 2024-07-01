ar = gets.split.map(&:to_i)
sum = 0
ar.each do |el|
sum += el
end
if sum.to_f % 2 == 0
  puts "Yes"
else
  puts "No"
end