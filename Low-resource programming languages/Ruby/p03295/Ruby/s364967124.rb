N, M = gets.split.map(&:to_i)
ABs = readlines.map{|l| l.split.map(&:to_i)}

ct, x = 0, 0
ABs.sort_by{|a, b| b}.each do |a, b|
  next if a <= x
  ct += 1
  x = b - 1
end
puts ct