n, m = gets.chomp.split.map(&:to_i)
arr = Array.new(m)
pref = Array.new(n) {Array.new}

m.times do |i|
  x, y = gets.chomp.split.map(&:to_i)
  arr[i] = {idx: i, pref: x, year: y}
end

sorted = arr.sort_by {|e| e[:pref]}

ans = Array.new(m)
city_nums = Array.new(n+1, 1)

sorted.each do |e|
  ans[e[:year]] = e[:idx].to_s.rjust(6, '0') + city_nums[e[:pref]].to_s.rjust(6, '0')
  city_nums[e[:pref]] += 1
end

ans.each {|e| puts e}
