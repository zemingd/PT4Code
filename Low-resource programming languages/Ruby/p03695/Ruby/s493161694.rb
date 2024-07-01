n = gets.to_i
a = gets.split.map(&:to_i)

v = Array.new(8, 0)
god = 0

n.times do |i|
  color = a[i]/400
  if color < 8
    v[color] += 1
  else
    god += 1
  end
end

uzomuzo = v.count{|x| x>0}

ans = []
ans << [uzomuzo,1].max
ans << uzomuzo+god


puts ans.join(" ")
