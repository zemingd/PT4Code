N, L = gets.strip.split.map(&:to_i)

sum = 0
N.times do |i|
  sum += L + i
end

res = 10 ** 6
sum2 = 0
N.times do |i|
  sv = L + i
  if sv.abs < res
    sum2 = sum - sv
    res = sv.abs
  end
end

p sum2
