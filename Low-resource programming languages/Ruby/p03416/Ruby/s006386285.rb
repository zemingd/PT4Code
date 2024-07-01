a,b = gets.split.map(&:to_i)

cnt = 0

(a..b).each do |i|
  revnum = i.to_s.split("").reverse.join.to_i
  cnt += 1 if i == revnum
end




puts cnt


