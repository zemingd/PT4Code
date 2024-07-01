s, t, *ab, u = $stdin.read.split
ab.map!(&:to_i)
ab[u == s ? 0 : 1] -= 1
puts ab.join(" ")

load __FILE__ until $stdin.eof?
