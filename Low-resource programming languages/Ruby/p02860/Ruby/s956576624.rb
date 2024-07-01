n = gets.to_i
m = n / 2
st = gets.chomp
puts ((n % 2 == 0 and st[0, m] == st[m, m]) ? 'Yes' : 'No')