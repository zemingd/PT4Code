number = gets.to_i

array = gets.split(" ").map(&:to_i)

sum = 1
array.each do |n|
  sum *= n
  if sum > 1000000000000000000
    puts -1
    return
  end
  if n == 0
    puts 0
    return
  end
end

puts sum