if __FILE__ == $0
  while line = STDIN.gets
    tokens = line.chomp!.split.map!(&:to_i)
    w, h, x, y, r = *tokens
    if (x - r) >= 0 && (x + r) <= w && (y - r) >= 0 && (y + r) <= h
      puts "Yes"
    else
      puts "No"
    end
  end
end