n = gets.to_i
ar = gets.chomp.split.map(&:to_i)
ans = 0
(n - 1).times{ |i|
  if (ar[i] < ar[i + 1] && ar[i] > ar[i - 1]) || (ar[i] > ar[i + 1] && ar[i] < ar[i - 1])
    ans += 1
  end
}
puts ans