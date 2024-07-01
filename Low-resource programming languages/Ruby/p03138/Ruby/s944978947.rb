n, k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

bits = Array.new(40) { 0 }
a.each do |i|
  bs = i.to_s(2).rjust(40, '0')
  bs.chars.reverse.each.with_index(0) do |c, j|
    bits[j] += 1 if c == '1'
  end
end

f = 0
bits.each.with_index(0) do |cnt, i|
  base = 2 ** i
  if base > k
    f += cnt * base
  else
    f += [cnt, n - cnt].max * base
  end
end
puts f
