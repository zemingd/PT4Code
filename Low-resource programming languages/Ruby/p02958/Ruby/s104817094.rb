N = gets.to_i
pn = gets.split.map(&:to_i)

count = 0
1.upto(N){|i|
  count += 1 if pn[(i-1)] != i 
}

puts (count == 0 || count == 2) ? "YES" : "NO"