n = gets.to_i
ary = gets.split.map(&:to_i)
b = 0
c = false
c = true if n == 1 and ary[0] == 1
(n-1).times{|i|
  break if i == ary.size
  if ary[i] == i+1
    c = true
    next
  else
    ary.delete_at(i)
    b += 1
    redo
  end
}
puts c ? b : -1
  