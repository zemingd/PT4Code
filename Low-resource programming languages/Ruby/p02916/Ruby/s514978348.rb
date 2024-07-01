n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)
c = gets.strip.split.map(&:to_i)

s = 0
before = -1

a.each do |i|
  s += b[i - 1]
  s += c[before - 1] if i == before.succ
  before = i
end

puts s