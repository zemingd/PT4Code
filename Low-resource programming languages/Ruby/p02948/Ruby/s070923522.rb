n,m = gets.chomp.split(" ").map(&:to_i)

works = Array.new(10**5+1).map{Array.new}
n.times do |i|
  a,b = gets.chomp.split(" ").map(&:to_i)
  works[a].push(b)
end

ans = 0
list = []
for i in 1..m
  list = list + works[i]
  if !list.empty?
    list.sort!.reverse!    ans += list[0]
    list.shift
  end
end
puts ans