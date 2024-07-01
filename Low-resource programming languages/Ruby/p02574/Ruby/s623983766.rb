n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
max = a.max
arr = Array.new(max+1,false)
flg = false
a.each do |x|
  break if flg
  v = x
  while v <= max
    if arr[v] = true
      flg = true
      break
    else
      arr[v] = true
      v += x
    end
  end
end
if flg
  gcd = 0
  a.each do |x|
    gcd = gcd.gcd(x)
  end
  if gcd == 1
    puts "setwise coprime"
  else
    puts "not coprime"
  end
else
  puts "pairwise coprime"
end