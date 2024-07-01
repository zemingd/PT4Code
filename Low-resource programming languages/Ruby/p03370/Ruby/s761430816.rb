n, x = gets.split.map(&:to_i)

ms = []
n.times { ms << gets.to_i }

ret = 0
ret += n

(1..x).each do |i|
  break unless x - ms.sum - ms.min * i >= 0
  ret += 1
end

puts ret
