_ = gets.to_i


a = gets.split.map(&:to_i)

sum = 1

a.each do |i|
  sum *= i
  if 10 ** 18 <= sum
    break
  end
end

puts 10 ** 18 < sum ? -1: sum