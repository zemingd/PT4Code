def main
  a, b = ARGF.gets.split.map(&:to_i)

  add = a + b
  sub = a - b
  mul = a * b

  puts [add, sub, mul].max
end

if __FILE__ == $0
  main
end
