n = gets.to_i
t, a = gets.chomp.split(' ').map(&:to_i)
h = gets.chomp.split(' ').map(&:to_i)

ans = 0
tmpt = a + 10000000
i = 1
h.each do |hh|
  avgt = t - hh * 000.6
  if (avgt - a).abs < (tmpt - a).abs
    ans = i
    tmpt = avgt
  end
  i += 1
end
p ans
