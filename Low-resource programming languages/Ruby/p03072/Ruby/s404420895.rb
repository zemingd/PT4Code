n = gets.chomp.to_i
hs = gets.chomp.split.map(&:to_i)

b = hs[0]
cnt = 1
hs[1..21].each do |h|
  next if b > h

  cnt += 1
  b = h
end
puts cnt
