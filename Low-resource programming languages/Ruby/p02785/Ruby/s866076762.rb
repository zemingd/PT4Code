n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

if n <= k
  puts 0
end

h_sort = h.sort{|a, b| a.to_i <=> b.to_i }

i = 0
sum = 0
while i < n - k
  sum += h_sort[i]
  i += 1
end

puts sum