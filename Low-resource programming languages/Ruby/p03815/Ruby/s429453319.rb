def main
  x = gets.to_i

  result = logic(x)

  puts("#{result}")
end

def logic(x)
  (x.to_f / 5.5).ceil
end

main
