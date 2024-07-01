n, m = gets.split.map(&:to_i)
rewards = (m + 1).times.map{Array.new}
n.times do
  a, b = gets.split.map(&:to_i)
  rewards[a] << b if a <= m
end

ans = 0
reward = []
1.upto(m) do |i|
  rewards[i].each do |b|
    elm = [*reward.each_with_index].bsearch{|x, _| x > b}
    if elm
      index = elm.last
    else
      index = reward.size
    end
    reward.insert(index, b)
  end
  unless reward.empty?
    ans += reward[-1]
    reward.delete_at(-1)
  end
end

puts ans
