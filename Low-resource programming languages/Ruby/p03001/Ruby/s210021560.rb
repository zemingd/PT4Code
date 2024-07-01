W, H, x, y = gets.split.map(&:to_i)

results = []
if x > W / 2
  results << (W - (W - x)) * H
else
  results << (W - x) * H
end

if y > H / 2
  results << (H - (H - y)) * W
else
  results << (H - y) * W
end

puts [results.max, results.count(results.max) == 1 ? '0' : '1'].join(' ')