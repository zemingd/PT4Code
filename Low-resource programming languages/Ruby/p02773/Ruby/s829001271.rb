n = gets.chomp.to_i

sums = {}
n.times{|i|
  s = gets.chomp
  sums[s] = 0 if sums[s].nil?
  sums[s] += 1
}

sorted = sums.sort{|a, b| b[1] <=> a[1] }

max = sorted[0][1]

filtered = sorted.take_while{|i|
  i[1] == max
}

filtered.sort{|a, b| a[0] <=> b[0] }.each{|i|
  puts i[0]
}
