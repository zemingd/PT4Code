n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
max = a.max
arr = Array.new(max+1,0)
2.upto(max) do |x|
  v = x
  while v <= max && arr[v] == 0
    arr[v] = x
    v += x
  end
end
hash = Hash.new(0)
flg = false
a.each do |x|
  y = arr[x] == 0 ? arr[x] : arr[x]
  hash[arr[x]] += 1
  if hash[arr[x]] == 2
    flg = true
  end
  break if flg
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