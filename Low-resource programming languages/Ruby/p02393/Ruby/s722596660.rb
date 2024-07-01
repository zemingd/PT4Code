if __FILE__ == $0
  while line = STDIN.gets
    tokens = line.chomp!.split.map!(&:to_i)
    arr = tokens.sort
    puts arr.join(" ")
  end
end