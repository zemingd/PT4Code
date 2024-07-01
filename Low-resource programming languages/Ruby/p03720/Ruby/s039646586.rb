n,m=gets.chomp.split.map(&:to_i)
cities = {}
(1..n).map{|value| cities.store(value,0)}
m.times do
  a,b=gets.chomp.split.map(&:to_i)
  cities[a]+=1
  cities[b]+=1
end
cities.map{|key,value| puts value}