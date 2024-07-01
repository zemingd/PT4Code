n = gets.strip.to_i
p = gets.strip.split.map { |v| v.to_i }
q = gets.strip.split.map { |v| v.to_i }

def permutation_order(n, permutation)
  a = (1..n).to_a
  order = 1
  (0..n-2).each do |i|
    order += (a.index(permutation[i]) - 1) * (1..n-i-1).inject(1,:*)
    a.delete(permutation[i])
  end

  order
end

puts (permutation_order(n, p) - permutation_order(n, q)).abs
