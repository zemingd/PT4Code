n, m = gets.split.map(&:to_i)
rewards = (m + 1).times.map{Array.new}
n.times do
  a, b = gets.split.map(&:to_i)
  rewards[a] << b if a <= m
end

ans = 0
reward = []
1.upto(m) do |i|
  (reward.push(*rewards[i])).sort!
  unless reward.empty?
    ans += reward[-1]
    reward.delete_at(-1)
  end
end

puts ans
