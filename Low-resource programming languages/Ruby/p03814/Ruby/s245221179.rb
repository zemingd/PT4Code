def main
  s = gets.chomp

  result = logic(s)

  puts("#{result}")
end

def logic(s)
  start_at = s.index('A')
  end_at = s.size - s.reverse.index('Z')
  end_at - start_at
end

main
