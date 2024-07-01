X = gets.to_i
answer = X / 11 * 2
rest = X - X / 11 * 11
answer += 1 unless rest == 0
answer += 1 if rest > 6
puts answer
