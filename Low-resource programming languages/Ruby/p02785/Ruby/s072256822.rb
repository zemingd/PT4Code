n, k = gets.split.map(&:to_i)
hs   = gets.split.map(&:to_i)

hs.sort!
k.times do
  hs.pop
end

ans = 0
hs.each{ | h | ans += h }

p ans
