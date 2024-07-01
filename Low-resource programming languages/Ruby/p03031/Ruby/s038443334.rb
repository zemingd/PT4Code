n,m = $stdin.gets.split.map(&:to_i)
ary = []
k = []
m.times do |i|
  k[i] = $stdin.getc.to_i
  ary[i] = $stdin.gets.split.map(&:to_i)
end
p = $stdin.gets.split.map(&:to_i)
result = 0
(2**n).times do |i|
  i = i.to_s(2).rjust(n)
  flg = false
  m.times do |j|
    if flg
      break
    end
    xor = 0
    k[j].times do |l|
      xor ^= i[ary[j][l]-1].to_i
    end
    if xor != p[j]
      flg = true
      break
    end
  end
  if !flg 
    result += 1
  end
end
 
puts result