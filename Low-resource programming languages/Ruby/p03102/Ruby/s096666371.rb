n,m,c = gets.split.map {|x| x.to_i}
b = gets.split.map {|x| x.to_i}
res = 0
n.times {
  a = gets.split.map {|x| x.to_i}
  sum = 0
  a.each_index { |i|
    sum += a[i]*b[i]
  }
  if (sum + c > 0)
    res += 1
  end
}
puts res
