n = gets.to_i
p=gets.chomp
q=gets.chomp

l = p.split(" ").permutation
p = p.delete(" ")
q = q.delete(" ")
count_p = 0
count_q = 0
l.each{|x|
  str = ""
  x.each{|s|
    str += s
  }
  if str < p
    count_p += 1
  end
  if str < q
    count_q += 1
  end
}

p (count_p - count_q).abs