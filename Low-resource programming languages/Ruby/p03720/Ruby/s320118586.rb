city,road = gets.split(" ").map(&:to_i)
ary,n = [],1
road.times{ary << gets.split(" ")}
ary.flatten!.map!(&:to_i)
city.times{ p ary.count(n); n += 1}