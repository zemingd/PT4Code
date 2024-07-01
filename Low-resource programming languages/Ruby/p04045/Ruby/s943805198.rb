N, K = gets.chomp.split
Ds = gets.chomp.split
Es = [*'0'..'9'] - Ds
tbl = Hash.new(true)
Ds.each { |d| tbl[d] = false }
d0 = Es.min

ms = []
carry = false
N.reverse.chars.each do |c|
  c.next! if carry
  c.next! until tbl[c] || c.size > 1
  if c.size == 1
    ms << c
    carry = false
  else
    ms << d0
    carry = true
  end
end
if carry
  ms << (d0 == '0' ? (Es - ['0']).min : d0)
end

puts ms.reverse.join
