n,m = gets.split.map(&:to_i)
ab = []
h = {}

n.times do
  tmp = gets.split.map(&:to_i)
  h[tmp[0]] ||= []
  h[tmp[0]] << tmp[1]
end

queue = []
ans = 0
(1..m).each do |i|
  if !h[i].nil?
    h[i].each do |v|
      queue << v
    end
    queue.sort!
  end
  ans += queue.pop.to_i
end

puts ans
