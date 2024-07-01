n, k = gets.split.map(&:to_i)
s = gets.chomp
a = s.each_char.slice_when(&:!=).map(&:size)

a.unshift(0) if s[0] == '0'
a.push(0) if s[-1] == '0'

cum = [0]
tmp = max = 0
a.each { |e| cum << tmp += e }

w = 2 * k + 1
i = 0

while i + w < cum.size
  max = [cum[i + w] - cum[i], max].max
  i += 2
end

puts n == 1 ? 1 : max