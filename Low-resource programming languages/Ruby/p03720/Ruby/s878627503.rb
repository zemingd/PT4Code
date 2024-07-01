n,m = gets.split.map(&:to_i)
ways = Array.new(n){[]}
m.times do 
  a,b = gets.split.map(&:to_i)
  ways[a-1] << b-1
  ways[b-1] << a-1
end

ways.each do |way|
  puts way.size
end