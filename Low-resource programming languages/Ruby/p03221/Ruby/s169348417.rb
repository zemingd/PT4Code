n, m = gets.chomp.split(" ").map(&:to_i)
prefs = Array.new(n+1){Array.new()}
city = Struct.new("City", :num, :year, :pref, :id)
m.times do |i|
  pref_, year_ = gets.chomp.split(" ").map(&:to_i)
  prefs[pref_] << city.new(i, year_, pref_, nil)
end

ret = Array.new(n+1)
prefs.each do |pref|
  pref.sort!{|a, b| a[:year] <=> b[:year]}
  i = 1
  pref.each do |c|
    c[:id] = i
    ret[c[:num]] = c
    i += 1
  end
end

ret.each do |c|
  puts sprintf("%06d", c[:pref]) + sprintf("%06d", c[:id])
end
