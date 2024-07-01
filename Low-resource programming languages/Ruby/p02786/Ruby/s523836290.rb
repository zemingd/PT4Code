H = gets.to_i

def f(h)
  return 1 if h <= 1

  2 * f(h / 2) + 1
end

puts f(H)
