num_of_prefectures, cities = gets.split.map &:to_i
history = Array.new(num_of_prefectures, 0)
ans = Array.new(cities).map{Array.new(3, 0)}
cities.times do |i|
  prefecture, year = gets.split.map &:to_i
  ans[i][0] = "%06d" % prefecture
  ans[i][1] = "%06d" % (history[prefecture - 1] + 1)
  ans[i][2] = (i + 1).to_i
  history[prefecture - 1] += 1
end
ans.sort_by { |e| e[2]  }
ans.each{|c| puts [c[0], c[1]].join}
