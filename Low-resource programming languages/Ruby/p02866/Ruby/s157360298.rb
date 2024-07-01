n = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)

f = d.shift
if f != 0
  p 0
  exit
end

d.sort!

if d[0] == 0
  p 0
  exit
end

ans = 1
last_node = 1
1.upto(n) do |i|
  num = 0
  d.size.times do |u|
    p = d[0]
    if p == i
      num += 1
      d.shift
    else
      break
    end
  end
  if num == 0
    if d.empty?
      break
    else
      p 0
      exit
    end
  end
  t = (last_node ** num) % 998244353
  ans *= t
  ans %= 998244353
  last_node = num
end
p ans
