max_diff = 0
max_diff_v = 0
sum = 0

def ceil(num)
  return ((num / 10) + 1) * 10 if num % 10 > 0
  num
end

5.times do |_|
  v = STDIN.gets.to_i
  ceil_v = ceil(v)
  diff = ceil_v - v
  max_diff, max_diff_v = diff, v if diff > max_diff
  sum += ceil_v
end

STDOUT.puts sum - ceil(max_diff_v) + max_diff_v