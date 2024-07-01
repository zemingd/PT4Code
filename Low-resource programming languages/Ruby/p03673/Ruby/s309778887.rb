n = gets.to_i
ary = gets.split(' ').map(&:to_i)
res = []
(0...n).each{|i|
  if i.even?
    res.unshift(ary[i])
  else
    res.push(ary[i])
  end
}
if n.even?
  res.reverse!
end
puts res.join(' ')