  n = gets.split.map(&:to_i)
  if n[0] != 0
    puts n.inject(:+)
  end
