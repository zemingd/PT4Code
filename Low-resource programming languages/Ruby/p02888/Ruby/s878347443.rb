n = gets.chomp.to_i
el = gets.chomp.split(' ').map{|i| i.to_i }

sum = 0
n.times{|i|
  (n - i - 1).times{|jj|
    j = jj + i + 1
    (n - j - 1).times{|kk|
      k = kk + j + 1
      sum += 1 if el[i] < el[j] + el[k] && el[j] < el[i] + el[k] && el[k] < el[i] + el[j]
    }
  }
}

puts sum
