def kanashisa(a, n, b)
  s = 0
  a.zip((1..n)){|a, n|
    s += (a - n - b).abs
  }
  s
end

n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i);

a0 = kanashisa(a, n, 0)
a1 = kanashisa(a, n, 1)

s, p, now, nxt = a1 < a0 ? [1, 1, a0, a1] : [-1, 0, a1, a0]
now, nxt, p = [nxt, kanashisa(a, n, p + s), p + s] while(now > nxt)

puts now
