n, k, q = gets.split.map(&:to_i)
arr = readlines.map{|a| a.chomp.to_i}
ps = [k-q] * n
arr.each do |a|
  ps[a-1] += 1
end
ps.each do |pp|
  puts pp > 0 ? "Yes" : "No"
end
