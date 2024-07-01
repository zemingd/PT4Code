def warizan_max(a, b)
  num = (a / b.to_f).round
  if b * num > a
    return num - 1
  else
    return num
  end
end

def warizan_min(a, b)
  num = (a / b.to_f).round
  if b * num < a
    return num + 1
  else
    return num
  end
end

a, b, c, d = gets.split.map(&:to_i)

c_wareru = warizan_max(b, c) - warizan_min(a, c) + 1
d_wareru = warizan_max(b, d) - warizan_min(a, d) + 1
lcm_wareru = warizan_max(b, c.lcm(d)) - warizan_min(a, c.lcm(d)) + 1

puts (b - a + 1) - (c_wareru + d_wareru - lcm_wareru)