def lcm(a, b)
  x = a * b
  a, b = b, a if a < b

  r = a % b
  until r.zero?
    a = b
    b = r
    r = a % b
  end
  x / b
end

def anti_division(a, b, c, d)
  c_div1 = (a - 1) / c
  c_div2 = b / c
  d_div1 = (a - 1) / d
  d_div2 = b / d

  lcm = lcm(c, d)
  l_div1 = (a - 1) / lcm
  l_div2 = b / lcm

  c_count = c_div2 - c_div1
  d_count = d_div2 - d_div1
  l_count = l_div2 - l_div1

  b - (a - 1) - c_count - d_count + l_count
end

a, b, c, d = gets.split.map(&:to_i)
puts anti_division(a, b, c, d)
