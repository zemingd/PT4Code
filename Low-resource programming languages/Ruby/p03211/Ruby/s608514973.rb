ss = $stdin.read.chomp.each_char.to_a
t = ss.length - 3 + 1
min_diff = -1
t.times do |i|
  n = ss.slice(i, 3).join.to_i
  diff = (753 - n).abs
  if min_diff < 0
    min_diff = diff
  else
    if diff < min_diff
      min_diff = diff
    end
  end
  if min_diff == 0
    break
  end
end

puts min_diff
