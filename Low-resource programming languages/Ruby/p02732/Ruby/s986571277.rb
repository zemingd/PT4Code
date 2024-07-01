n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

a.each_with_index{ |x, i|
  tem = a.dup
  tem.delete_at(i)
  tmp = tem.combination(2).to_a
  ans = 0
  tmp.each { |j|
    if j[0] == j[1]
      ans += 1
    end
  }
  p ans
}
