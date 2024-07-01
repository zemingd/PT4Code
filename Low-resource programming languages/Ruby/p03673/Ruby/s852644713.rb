n = gets.chomp.to_i
a = gets.chomp.split(' ')
puts ((0..((n - 1) / 2)).map { |m| n - m * 2 - 1 } + (1..(n / 2)).map { |m| m * 2 - 1 - (n + 1) % 2 }).map { |i|
  a[i]
}.join(' ')
