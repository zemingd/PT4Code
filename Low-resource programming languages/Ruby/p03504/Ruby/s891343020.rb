TIME = 10 ** 2
n, c = gets.split.map(&:to_i)
recordings = []
n.times { recordings << gets.split.map(&:to_i) }
channels = Array.new(c) { Array.new(TIME + 1, 0) }
# いもす法準備
recordings.each do |from, to, channel|
  channels[channel - 1][from - 1] += 1
  channels[channel - 1][to - 1] -= 1
end
# いもす法加算
channels.each do |channel|
  (1..TIME).each do |i|
    channel[i] += channel[i - 1]
  end
end
# 録画に途切れがあるところは、他のチャンネルの次に録画するため、開始時間を 1 早める
channels.each do |channel|
  (0..TIME - 1).each do |i|
    channel[i] += 1 if channel[i + 1] > channel[i]
  end
end
ans = []
# 最も録画中のチャンネルが多い時間帯を求める
(0...TIME).each do |i|
  sum = 0
  channels.each do |channel|
    sum += channel[i]
  end
  ans << sum
end
puts ans.max
