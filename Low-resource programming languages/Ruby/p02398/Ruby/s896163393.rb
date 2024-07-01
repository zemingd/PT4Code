if __FILE__ == $0
  i = 1
  while line = STDIN.gets
    tokens = line.chomp!.split.map!(&:to_i)
    x, y, seed = tokens[0], tokens[1], tokens[2]
    ans = 0
    while x <= y
      v = x
      ans += 1 if seed % v == 0
      x += 1
    end
    puts ans
  end
end