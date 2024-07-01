N = gets.to_i

wk = N.divmod(11)
ans = 2 * wk[0]
ans += (wk[1] < 7 ? 1 : 2) if wk[1] > 0

puts ans
