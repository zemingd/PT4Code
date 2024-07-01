n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = []
n.downto(1) do |i|
  s = 0
  2.upto(n) do |j|
    if i * j > n then
      break
    end
    s += b[i * j - 1] 
  end
  b[i-1] = (a[i-1] + s) % 2
end
p = b.sum
if p > 0 then
  r = ''
  1.upto(n) do |i|
    if b[i-1] > 0 then
      r << i.to_s << ' '
    end
  end
  puts p
  puts r.chop
else
  puts p 
end