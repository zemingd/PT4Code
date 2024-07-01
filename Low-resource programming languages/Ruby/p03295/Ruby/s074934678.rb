(N, M) = gets.split.map(&:to_i)

data = []
M.times do
  data << gets.split.map(&:to_i)
end

data.sort_by! do |a|
  a[1]
end

bridge = -1

c = 0
data.each do |a|
  if bridge < a[0]
    bridge = a[1] - 1
    c += 1
  end
end

puts c