N, M = gets.split.map(&:to_i)

hash = {}
N.times do
  d = gets.split.map(&:to_i)
  next if d[0] > M
  hash[d[0]] = [] unless hash[d[0]]
  hash[d[0]] << d[1]
end

result = 0
days = 1
bucket = []
while true do
  d = hash[days]
  if d
    bucket += d
    bucket.sort_by! { |bd| -bd }[0..(M - days - 1)]
  end

  if bucket.size > 0
    result += bucket.shift
  end

  days += 1
  break if days > M
end

p result
