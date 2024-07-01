N = gets.to_i
A = gets.split.map(&:to_i)

sum = 0
A.each do |a|
  next if a % 2 == 1

  while (a % 2 == 0)
    a /= 2
    sum += 1
  end
end

puts sum
