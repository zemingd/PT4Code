gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
result = 0
a.each do |num|
  while num % 2 == 0 do
    num /= 2
    result += 1
  end
end
puts result