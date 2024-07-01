H, W = gets.split.map(&:to_i)
puts (0...H).map {gets.chomp.chars}.
  reject {|xs| xs.all? {|x| x == "."}}.
  transpose.
  reject {|xs| xs.all? {|x| x == "."}}.
  transpose.
  map {|xs| xs.join}