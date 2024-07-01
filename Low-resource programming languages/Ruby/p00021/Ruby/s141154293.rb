while str = STDIN.gets

  break if str == "\n"

  n = str.chomp.to_i

  n.times{
    (x1, y1, x2, y2, x3, y3, x4, y4) = STDIN.gets.chomp.split(/ /).map(&:to_i)

    puts ((x1 - x2) * (y3 - y4)) == ((x3 - x4) * (y1 - y2)) ? "YES" : "NO"
  }

end