N, L = gets.split(' ').map(&:to_i)

apples = (L..(L + N - 1)).to_a

min_abs = apples.map(&:abs).min
min_abs_idx = apples.map(&:abs).index(min_abs)

print (apples.sum - apples[min_abs_idx])
