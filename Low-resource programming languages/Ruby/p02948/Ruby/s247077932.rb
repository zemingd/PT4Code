def merge_sorted_array(a, b)
  array = []
  a_size = a.size
  b_size = b.size
  ai = 0
  bi = 0
  while ai < a_size && bi < b_size
    if a[ai] > b[bi]
      array << a[ai]
      ai += 1
    else
      array << b[bi]
      bi += 1
    end
  end

  if ai == a_size
    array += b[bi..b_size]
  else
    array += a[ai..a_size]
  end

  array
end

n, m = gets.split(" ").map(&:to_i)

rewards = {}
n.times do
  latency, reward = gets.split(" ").map(&:to_i)
  rewards[latency] ||= []
  rewards[latency] << reward
end

rewards.keys.each do |latency|
  rewards[latency] = rewards[latency].sort.reverse
end

ans = 0
available_rewards = []
(1..m).each do |latency|
  available_rewards = merge_sorted_array(available_rewards, rewards[latency] || [])
  ans += available_rewards.shift || 0
end

puts ans
