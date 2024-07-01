  while line = gets.chars.map(&:to_i)
    line[0] == 0 && break
    puts line.inject{| sum, num | sum + num }
  end

