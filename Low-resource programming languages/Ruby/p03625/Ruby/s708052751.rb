n = gets.to_i
a = gets.split.map(&:to_i).sort.reverse
e = []
tmp = 0
a.each{|a_|
  break if e.size == 2
  if tmp == a_
      e << tmp
      tmp = 0
  else
    tmp = a_
  end
}

p e.size == 2 ? e[0] * e[1] : 0