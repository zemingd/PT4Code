N, K = gets.chomp.split
Ds = gets.chomp.split
Es = [*'0'..'9'] - Ds
tbl = {}
Es.each { |d| tbl[d] = true }

ms = []
carry = false
N.reverse.chars.each do |c|
  c.next! if carry
  c.next! until tbl[c] || c.size > 1
  if c.size == 1
    ms << c
    carry = false
  else
    ms << Es[0]
    carry = true
  end
end
if carry
  ms << (Es[0] == '0' ? Es[1] : Es[0])
end

puts ms.reverse.join
