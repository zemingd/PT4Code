n, k = gets.split.map(&:to_i)
s = gets.chomp
a = s.each_char.slice_when(&:!=).map(&:size)

a.unshift(0) if s[0] == '0'
a.push(0) if s[-1] == '0'

cum = [0]
tmp = max = 0
a.each { |e| cum << tmp += e }
size = cum.size

1.upto(k) do |i|
  w = 2 * i + 1

  j = 0
  while j + w < size
    max = [cum[j + w] - cum[j], max].max
    j += 2
  end
end

puts n == 1 ? 1 : max