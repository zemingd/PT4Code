n = gets.to_i
ss = n.times.map { gets.chomp }

counts = ss.each_with_object(Hash.new(0)) do |s, h|
  h[s] += 1
end

ans = counts.sort_by { |k, v| [-v, k] }
puts ans.select { |k, v| v == ans[0][1] }.map(&:first)
