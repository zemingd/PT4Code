a,b = gets.split.map(&:to_i)

cnt = 0

(a..b).each do |num|
  renum = num.to_s.split("").reverse.join.map(&:to_i)
  cnt += 1 if num == renum
end

puts cnt