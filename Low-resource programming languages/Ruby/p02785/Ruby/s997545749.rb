n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

if n <= k
  puts 0
end

h_sort = h.sort{|a, b| b.to_i <=> a.to_i  }

i = k
sum = 0
while i < n
  sum += h_sort[i]
  i += 1
end

puts sum