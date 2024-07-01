n = gets.to_i
arr = n.times.map { gets.to_i }
sum = arr.inject(&:+)
if sum % 10 != 0
  puts sum
  exit
end
arr.sort.each do |i|
  if i % 10 != 0
    puts sum - i
    exit
  end
end
puts 0
