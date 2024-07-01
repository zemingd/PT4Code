N, M = gets.split.map(&:to_i)
works = N.times.map { gets.split.map(&:to_i) }.group_by(&:first)
can = []
sum = 0
1.upto(M) do |day|
  can.concat works[day].map{|el| el[1]} if works[day]
  if w = can.max
    sum += w
    can.delete_at(can.index(w))
  end
end

p sum