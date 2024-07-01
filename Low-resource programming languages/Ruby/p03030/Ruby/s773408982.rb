N = gets.to_i
SP = []
N.times do |i|
  line = gets.chop.split
  SP << [line[0], 100 - line[1].to_i, i+1]
end

SP.sort.each do |sp|
  p sp[2]
end