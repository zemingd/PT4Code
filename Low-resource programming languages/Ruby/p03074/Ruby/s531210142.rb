n, k = gets.split.map(&:to_i)
s = gets.chomp
a = s.each_char.slice_when(&:!=).map(&:size)

a.unshift(0) if s[0] == '0'
a.push(0) if s[-1] == '0'

cum = [0]
tmp = 0
a.each { |e| cum << tmp += e }

size = cum.size
l = max = 0
w = 2 * k + 1

while l < size
  tmp = l + w > size ? size - 1 : l + w
  max = [cum[tmp] - cum[l], max].max
  l += 2
end

puts max