h = gets.to_i

def f(x)
  return 1 if x == 1
  f(x/2) * 2 + 1
end

puts f(h)