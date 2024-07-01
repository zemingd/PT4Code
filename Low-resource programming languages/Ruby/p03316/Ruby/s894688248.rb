N = gets.chomp.to_i
i = N
total = 0
while i > 0
  total += i % 10
  i /= 10
end
puts 'Yes' if N % total == 0
puts 'No' if N % total != 0