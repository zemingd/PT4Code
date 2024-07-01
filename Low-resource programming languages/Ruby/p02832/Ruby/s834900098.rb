n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)

x = 1
ans = 0
n.times{ |i|
  if a[i] == x
    x += 1
  else
    ans += 1
  end
}

puts ans == n ? -1 : ans