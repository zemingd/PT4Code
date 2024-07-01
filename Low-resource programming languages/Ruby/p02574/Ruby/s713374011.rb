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
hash = Hash.new(0)
flg = false
a.each do |x|
  if x != 1
    y = x
    while y != 1
      if hash[arr[y]] != x && hash[arr[x]] != 0
        flg = true
      end
      hash[arr[x]] = x
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