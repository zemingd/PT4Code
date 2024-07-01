n = gets.to_i
numbers = gets.split.map(&:to_i)
count = 0

numbers.each do |number|
  if numbers[0..numbers.index(number)].all?{|e|e >= number}
    count += 1
  end
end

puts count