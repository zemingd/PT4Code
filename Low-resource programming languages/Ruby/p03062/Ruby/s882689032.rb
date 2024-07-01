N = gets.to_i
As = gets.split.map(&:to_i)

cnt = 0
As.each do |a|
  cnt += 1 if a < 0
end

bs = As.map{|a| a > 0 ? a : -a}
res = bs.reduce(:+)
res = res - bs.min * 2 if cnt % 2 == 1

puts res