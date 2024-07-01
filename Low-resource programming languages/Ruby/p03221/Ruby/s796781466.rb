n,m = gets.split.map(&:to_i)
ary = []
rank = []
m.times do |i|
  ary[i] = gets.split.map(&:to_i)
end

(1..n).each do |i|
  rank[i] = []
end
m.times do |i|
  p,y = ary[i]
  rank[p].push([y,i]) 
end

(1..n).each do |p|
  next if rank[p].nil?
  rank[p].sort!
end

(1..n).each do |p|
  next if rank[p].nil?
  (rank[p].size).times do |r|
    ary[rank[p][r][1]][2] = r+1
  end
end

m.times do |i|
  puts ary[i][0].to_s.rjust(6,"0") + ary[i][2].to_s.rjust(6,"0")
end

