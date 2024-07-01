H, W = gets.split.map(&:to_i)
puts (0...H).map {gets.chomp.chars}.
  reject {|xs| xs.all?(".")}.
  transpose.
  reject {|xs| xs.all?(".")}.
  transpose.
  map {|xs| xs.join}