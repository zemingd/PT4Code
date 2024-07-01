n = gets.to_i
data = []
n.times do
    data << gets.to_i
end

sum = data.inject(0) { |a, d| a + d }
filtered = data.reject { |d| d % 10 === 0 }

if sum % 10 != 0
    puts sum
elsif filtered.size === 0
    puts 0
else
    puts sum - filtered.min
end