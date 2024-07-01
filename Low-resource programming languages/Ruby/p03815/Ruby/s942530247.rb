N = gets.to_i

wk = N.divmod(11)

puts 2 * wk[0] + (wk[1] < 7 ? 1 : 2)
