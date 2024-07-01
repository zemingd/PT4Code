n = gets.to_i
numbers = gets.split.map(&:to_i)
count = 0
numbers.each do |n|
  loop do
    if n % 2 == 0
      n = n/2
      count += 1
    else
      break
    end
  end
end

puts count