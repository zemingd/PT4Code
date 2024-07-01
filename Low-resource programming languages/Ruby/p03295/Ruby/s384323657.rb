N, M = gets.chomp.split.map(&:to_i)
requests = ARGF.map {|l| l.chomp.split.map(&:to_i) }

ans = 0
x = -1
requests.sort_by {|a, b| b}.each do |a, b|
  next if a <= x
  x = b - 1
  ans += 1
end
puts ans