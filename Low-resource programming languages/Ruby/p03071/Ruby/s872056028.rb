a, b = gets.chomp!.split.map{|x| x.to_i}
res = 0
2.times {
  if a > b
    res += a
    a -= 1
  else
    res += b
    b -= 1
  end
}

puts res
