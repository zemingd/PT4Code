num_of_prefectures, cities = gets.split.map &:to_i
history = Array.new(num_of_prefectures, 0)
ans = Array.new(cities).map{Array.new(4, 0)}
cities.times do |i|
  prefecture, year = gets.split.map &:to_i
  ans[i][0] = "%06d" % prefecture
  ans[i][1] = year
  ans[i][2] = i
end
ans = ans.sort_by { |e| e[1] }
cities.times do|i|
  ans[i][3] = "%06d" % (history[ans[i][0].to_i - 1] + 1)
  history[ans[i][0].to_i - 1] += 1
end
ans = ans.sort_by { |e| e[2] }
ans.each{ |c| puts [c[0],c[3]].join}
