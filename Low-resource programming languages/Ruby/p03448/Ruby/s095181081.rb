a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i

result = 0
sum = 0

(a + 1).times do |i|
  (b + 1).times do |j|
    (c + 1).times do |k|
      sum = 500 * i + 100 * j + 50 * k
      result += 1 if sum == x
    end
  end
end

puts result