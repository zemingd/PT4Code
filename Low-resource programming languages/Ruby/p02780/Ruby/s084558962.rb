n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

res = 0
exp = []

$factorials = []


def calc_exp(i)
  # num = [*1..i].inject(:+).to_f
  num = (i * i + i).to_f / 2.0
  num / i.to_f
end

nums.each do |i|
  exp << calc_exp(i)
end

current = 0
current_added = 0
exp.each_with_index do |e, idx|
  if current_added < k
    current += e
    current_added += 1
    res = current
    next
  end
  current -= exp[idx - k]
  current += e
  res = [current, res].max
end

puts res