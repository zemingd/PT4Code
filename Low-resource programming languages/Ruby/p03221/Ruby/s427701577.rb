N,M = readline.chomp.split.map(&:to_i)

cities = Array.new(N+1) { Hash.new }
M.times do |i|
  p,y = readline.chomp.split.map(&:to_i)
  cities[p][y] = i
end

ids = Array.new(M)

cities.each_with_index do |cs,pref_id|
  years = cs.keys.sort
  years.each_with_index do |y,x|
    ids[ cs[y] ] = sprintf("%06d%06d", pref_id, x+1)
  end
end

puts ids
