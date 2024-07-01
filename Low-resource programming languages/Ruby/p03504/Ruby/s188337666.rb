n, c = gets.split.map(&:to_i)
recordings = []
n.times { recordings << gets.split.map(&:to_i) }
channels = Array.new(c) { Array.new(10 ** 5 + 1, 0) }
recordings.each do |from, to, channel|
  channels[channel - 1][from - 1] += 1
  channels[channel - 1][to] -= 1
end
channels.each do |channel|
  (1..10 ** 5).each do |i|
    channel[i] += channel[i - 1]
  end
end
ans = []
(0...10 ** 5).each do |i|
  sum = 0
  channels.each do |channel|
    sum += channel[i]
  end
  ans << sum
end
puts ans.max