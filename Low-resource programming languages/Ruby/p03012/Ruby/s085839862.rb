def lscan;gets.split.map(&:to_i);end

N = gets.to_i
W = lscan

r = W.reduce(:+)
l = 0

best = r

W.each do |w|
  l += w
  r -= w
  best = [best, (r-l).abs].min
end

p best