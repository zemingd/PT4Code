N,M = gets.split.map(&:to_i)

prefs = []
states = []

M.times do
  states << []
end

M.times do
  p, y = gets.split.map(&:to_i)
  states[p] << y
  prefs << [p,y]
end

order = Hash.new

#年から順序を導出
states.each_with_index do |y, p|
  states[p].sort.each_with_index do |year, i|
    order[year] = i+1
  end
end

#答え出力
prefs.each do |(pref,year)|
  str = "%#06d" % pref + "%#06d" % order[year]
  puts str
end
