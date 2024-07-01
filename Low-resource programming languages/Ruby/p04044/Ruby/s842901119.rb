n, l = gets.strip.split.map(&:to_i)
list = []
ans = ""
n.times do 
  list << gets.strip.split("")
end
list.sort.each do |i|
  ans+=i.join
end
puts ans