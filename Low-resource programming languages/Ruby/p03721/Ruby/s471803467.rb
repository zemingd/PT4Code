N, K = gets.split.map(&:to_i)
ABs = readlines.map{|l| l.split.map(&:to_i)}

ans, s = nil, 0
ABs.sort_by{|a, b| a}.each do |a, b|
  s += b
  if s >= K
    ans = a
    break
  end
end
puts ans