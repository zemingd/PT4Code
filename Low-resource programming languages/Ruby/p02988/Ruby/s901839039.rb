n = gets
ps = gets.chomp.split(/ /).map(&:to_i)

count = 0
1.upto(ps.size-2) { |i|
  count += 1 if [ps[i-1], ps[i], ps[i+1]].sort[1] == ps[i]
}

puts count
