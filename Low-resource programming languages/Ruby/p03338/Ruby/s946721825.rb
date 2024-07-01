n = gets.to_i
s = gets.chomp
cnt = ans = 0
(0..s.size-1).each do|i|
  x = s.slice(0..i).chars.uniq
  y = s.slice(i+1..s.size-1).chars.uniq
  cnt = 0
  x.each do |k|
    if y.include?(k)
      cnt += 1
    end
  end
  ans = cnt if ans < cnt
end
puts ans
