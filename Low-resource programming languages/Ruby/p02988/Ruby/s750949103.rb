n = gets.to_i
ar = gets.chomp.split.map(&:to_i)
ans = 0
(n - 1).times{ |i|
  tmp = [ar[i-1],ar[i],ar[i+1]].sort
  if (tmp[1] == ar[i])
    ans += 1
  end
}
puts ans