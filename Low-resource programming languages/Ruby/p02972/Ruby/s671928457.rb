n = gets.chomp.to_i
aa = gets.chomp.split.map(&:to_i)
a = []
n.times do |i|
  a[i+1] = aa[i]
end
(n/2).downto(1) do |i|
  k = 2 * i
  while k <= n
    a[i] += a[k]
    k += i
  end
  a[i] %= 2
end
puts a.count(1)
b = []
1.upto(n) do |i|
  if a[i] == 1
    b << i
  end
end
if a.count != 0
  b.length.times do |i|
    if i == 0
      print b[i]
    else
      print " #{b[i]}"
    end
  end
end
