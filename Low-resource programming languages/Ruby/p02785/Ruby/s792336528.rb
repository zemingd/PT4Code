n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

if n <= k
  puts 0.to_i
  exit
end

h_sort = h.sort{|a, b| b.to_i <=> a.to_i  }
p h_sort
i = k
sum = 0
while i < n
  sum += h_sort[i]
  i += 1
end

puts sum.to_i