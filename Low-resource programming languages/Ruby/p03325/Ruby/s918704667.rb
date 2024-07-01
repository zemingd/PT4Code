n = gets.to_i
a = gets.split(" ").map(&:to_i)
div_count = 0

a.each do |num|
  while num % 2 == 0
    num /= 2
    div_count += 1
  end
end
puts div_count
