A, B, C, D = gets.chomp.split(" ").map(&:to_i)

def cnt_baisu(a, b, x)
  d, m = a.divmod(x)
  i = d + (m.zero? ? 0 : 1)
  d, m = b.divmod(x)
  d - i + 1
end

puts B - A + 1 - (cnt_baisu(A, B, C) + cnt_baisu(A, B, D) - cnt_baisu(A, B, C.lcm(D)))
