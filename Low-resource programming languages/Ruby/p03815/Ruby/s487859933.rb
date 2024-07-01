def main
  x = gets.to_i

  result = logic(x)

  puts("#{result}")
end

def logic(x)
  a = x.div(11) * 2
  b = x.modulo(11)
  c = b.zero? ? 0 : b < 7 ? 1 : 2
  a + c
end

main
