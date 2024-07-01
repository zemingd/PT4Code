A, B, C, K = gets.split.map(&:to_i)

sum = 0
k = K

d = [A, k].min
k -= d
sum += 1 * d
(puts sum; exit) if k == 0

d = [B, k].min
k -= d
sum += 0 * d
(puts sum; exit) if k == 0

d = [C, k].min
k -= d
sum += -1 * d
(puts sum; exit) if k == 0
