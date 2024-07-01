N = gets.to_i
p = gets.chomp.split.map(&:to_i)
a = p == p.sort ? "YES" : "NO"

[*0...N].combination(2){|i, j|
    q = p.dup
    q[i], q[j] = q[j], q[i]
    a = "YES" if q == p.sort
}

puts a