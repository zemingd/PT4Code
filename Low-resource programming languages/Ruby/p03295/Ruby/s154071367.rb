n, m = STDIN.gets.split(' ').map(&:to_i)

requests = m.times.map do
  STDIN.gets.split(' ').map(&:to_i)
end

requests.sort_by! {|r| [r[1], -r[0]]}

split = 0

target = requests.shift
while (target)
  requests.select! {|r| r[0] >= target[1]}
  target = requests.shift
  split += 1
end

puts split