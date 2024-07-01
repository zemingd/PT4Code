n = ARGF.gets.to_i
h = ARGF.gets.split(" ").map(&:to_i)

hmax = -1
res = 0
h.each do |hi|
  if hi >= hmax
    res += 1
    hmax = hi
  end
end

puts res
