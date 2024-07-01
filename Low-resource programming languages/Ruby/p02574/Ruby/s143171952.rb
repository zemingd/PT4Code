n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
max = a.max
arr = Array.new(max+1,0)
2.upto(max) do |x|
  v = x
  while v <= max
    arr[v] = x if arr[v] == 0
    v += x
  end
end
hash = Hash.new(-1)
flg = false
n.times do |i|
  if a[i] != 1
    y = a[i]
    while y != 1
      if hash[arr[y]] != i && hash[arr[a[i]]] != -1
        flg = true
      end
      hash[arr[a[i]]] = i
      y = y / arr[y]
    end
    break if flg
  end
end
if !flg
  puts "pairwise coprime"
else
  gcd = 0
  a.each do |x|
    gcd = gcd.gcd(x)
  end
  if gcd == 1
    puts "setwise coprime"
  else
    puts "not coprime"
  end
end