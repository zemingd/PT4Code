gets
NS = gets.split.map(&:to_i)
highs, lows = NS.partition{|n| n >= 3200}
nl = lows.map{|n| n / 400}.uniq.size
nh = highs.size
min = (nl == 0 ? 1 : nl)
max = nl + nh
puts "#{min} #{max}"

