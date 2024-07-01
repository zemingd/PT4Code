n = gets.to_i
evi = n.times.map do
  a = gets.to_i
  a.times.map{gets.split.map(&:to_i)}
end

ans = 0
(2**n).times do |bit|
  cnt = 0
  n.times do |i|
    if bit[i] == 1
      flg = false
      evi[i].each do |x,y|
        flg = true if bit[x-1] != y
      end
      if flg
        cnt = 0
        break
      end
      cnt += 1
    end
  end
  ans = cnt if cnt > ans
end

puts ans