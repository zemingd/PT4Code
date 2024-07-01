def main
  n = ARGF.gets.chomp.to_i

  if n.even?
    puts n
  else
    puts n * 2
  end
end

if __FILE__ == $0
  main
end
