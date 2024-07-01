N, M = gets.split.map(&:to_i)
cities = N.times.map{|n|[n+1,0]}.to_h
M.times do |i|
    a, b = gets.split.map(&:to_i)
    cities[a] = cities[a] + 1
    cities[b] = cities[b] + 1
end
cities.each do |k,v|
    puts v
end