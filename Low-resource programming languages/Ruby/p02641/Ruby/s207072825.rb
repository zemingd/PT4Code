X, N = ARGF.gets.chomp.split.collect {|el| el.to_i}
P = ARGF.gets.chomp.split.collect {|el| el.to_i}

dd = 0
xc = X + dd

102.times do |dd|
  xc = X - dd
  unless P.include?(xc)
    break
  end
  xc = X + dd
  unless P.include?(xc)
    break
  end
end

puts xc
