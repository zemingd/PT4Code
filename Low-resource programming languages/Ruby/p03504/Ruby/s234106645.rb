N, C = gets.split.map(&:to_i)
stc = N.times.map { gets.split.map(&:to_i) }
a = Array.new(200000, 0)

stc.each do |s, t, c|
  a[s*2-1] += 1
  a[t*2] -= 1
end
max = c = 0
a.each do |i|
  c += i
  max = [max, c].max
end

p max
