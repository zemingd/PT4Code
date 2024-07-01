diver = 10 ** 9 + 7

n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i }

sum = 0
(n - 1).times{|i|
  (n - (i + 1)).times{|jj|
    j = jj + (i + 1)
    sum += a[i] ^ a[j]
  }
}

if sum > diver
  puts sum % diver
else
  puts sum
end
