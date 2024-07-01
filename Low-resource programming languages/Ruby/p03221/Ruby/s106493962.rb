n, m = gets.split.map(&:to_i)
prefs = Array.new(n+1).map{{}}
codes = Array.new(m)
m.times do |i|
  p, y = gets.split.map(&:to_i)
  prefs[p][i] = y
end
prefs.each_with_index do |pref, pref_no|
  city_no = 1
  pref.sort{|a,b| a[1]<=>b[1]}.each do |i, y|
    codes[i] = sprintf("%06d%06d", pref_no, city_no)
    city_no += 1
  end
end

codes.each{puts _1}