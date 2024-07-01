n,m = gets.split.map(&:to_i)
roads = m.times.map{gets.split.map(&:to_i)}

ans = [0]*n
roads.each do |r|
  1.upto(n) do |i|
    ans[i-1] += 1 if r.include?(i)
  end
end

ans.each do |a|
  puts a
end