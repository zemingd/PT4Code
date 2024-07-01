N = gets.to_i
ichi = gets.strip.split.map(&:to_i)
ary = []
m = ichi.min
n = ichi.max
i = 0

(m..n).each do |x|
  sum = 0
  (0..N-1).each do |j|
    sum += (x-ichi[j])**2
  end
  ary[x-m] = sum
end
puts ary.min