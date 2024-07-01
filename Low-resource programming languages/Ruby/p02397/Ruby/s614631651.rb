ARGF.each_line do |line|
  ary = line.split(" ").map(&:to_i)
  unless ary.max == 0
    puts ary.sort.join(" ")
  end
end