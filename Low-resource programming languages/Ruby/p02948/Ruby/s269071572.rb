N, M = gets.split.map(&:to_i)
AB = []
N.times do
  line = gets.split.map(&:to_i)
  AB << line
end

CD = []
ans = 0
AB.sort!
(1..M).each do |n|
  while AB[0] && AB[0][0] == n
    CD.push(AB[0])
    AB.delete_at(0)
  end
  CD.sort_by!{ |a, b| b }.reverse!
  if CD[0]
    ans += CD[0][1]
    CD.delete_at(0)
  end
end
  
print ans