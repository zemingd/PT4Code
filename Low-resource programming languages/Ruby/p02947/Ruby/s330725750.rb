s = readlines.map(&:chomp)
n = s[0].to_i
s2 = []
s.each do |i|
  s2 << i.chars.sort.join
end
ans = 0
count = 2


s2[1..n].each do |i|
  (count..n).each do |j|
    if i == s2[j]
      ans += 1
    end
  end
  count = count + 1
end

puts ans