n = gets.to_i
ary = gets.split.map(&:to_i)
b = 0
c = false
c = true if n == 1 and ary[0] == 1
(n-1).times{|i|
  break if i >= ary.size
  if pos = ary.index(i+1)
    b += pos-i
    ary.slice!(i, pos-i)
    c = true
  else
    break
  end
}
puts c ? b : -1