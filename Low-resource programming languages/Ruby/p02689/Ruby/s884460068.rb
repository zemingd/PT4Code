N, M = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
AB = readlines.map {|s| s.split.map(&:to_i) }

ans = Array.new(N, true)
AB.each do |a,b|
  ans[a-1] = false if H[a-1] <= H[b-1]
  ans[b-1] = false if H[b-1] <= H[a-1]
end
puts ans.count(true)
