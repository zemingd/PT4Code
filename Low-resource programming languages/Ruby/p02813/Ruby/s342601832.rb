n = gets.to_i
p = gets.split("\s").join.to_i
q = gets.split("\s").join.to_i

p_ord = 0
q_ord = 0
count = 0

(1..n).to_a.permutation.each do |i|
  perm = i.join.to_i
  p_ord = count if p == perm
  q_ord = count if q == perm
  count += 1
end

dist = (p_ord - q_ord)

p dist > 0 ? dist : -dist