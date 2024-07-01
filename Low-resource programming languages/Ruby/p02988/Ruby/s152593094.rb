def ordinary_number(p)
  f = ->(a, b, c) {
    a, c = c, a if a > c
    a < b && b < c
  }

  ans = 0
  1.upto(p.size - 2) do |i|
    ans += 1 if f.call(p[i - 1], p[i], p[i + 1])
  end
  ans
end

p = gets.split.map(&:to_i)
puts ordinary_number(p)
