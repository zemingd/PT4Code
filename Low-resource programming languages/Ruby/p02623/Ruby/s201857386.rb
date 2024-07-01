n, m, k = gets.chomp.split(" ").map(&:to_i)
as = gets.chomp.split(" ").map(&:to_i)
bs = gets.chomp.split(" ").map(&:to_i)

a = [0]
b = [0]

(0..(n-1)).each{ |i|
  a.push (a[i] + as[i])
}
(0..(m-1)).each{ |i|
  b.push (b[i] + bs[i])
}

answer = 0
j = m
(0..n).each{ |i|
  if a[i] > k
    break
  end
  while b[j] > k - a[i]
    j -= 1
  end
  answer = [answer, i + j].max
}

puts answer
