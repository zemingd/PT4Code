ar = gets.split.map(&:to_i)
sum = 0
ar.each do |el|
sum += el
end

if sum % 3 == 0
  puts "Yes"
else
  puts "No"
end