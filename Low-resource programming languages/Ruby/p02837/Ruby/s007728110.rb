n = gets.to_i
evi = n.times.map do
  a = gets.to_i
  a.times.map{gets.split.map(&:to_i)}
end

ans = 0
(2**n).times do |bit|
  cnt = 0
  n.times do |i|
    if bit[i] == 1 && evi[i].all? {|x,y| bit[x-1] == y}
      cnt += 1
    else
      cnt = 0
      break
    end
  end
  ans = cnt if cnt > ans
end

puts ans