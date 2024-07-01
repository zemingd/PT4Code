def main
  d, n = ARGF.gets.split.map(&:to_i)

  if d == 0
    puts n
  elsif d == 1
    puts n * 100
  else
    puts n * 100 * 100
  end
end

if __FILE__ == $0
  main
end
