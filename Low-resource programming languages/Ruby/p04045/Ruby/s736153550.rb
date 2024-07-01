def gli
  gets.split.map(&:to_i)
end

n, k = gli
d = gli

ret = ""
carry = 0
n.to_s.reverse.each_char {|c|
  g = c.to_i + carry
  while d.include?(g%10)
    g += 1
  end
  carry = g/10
  ret += (g%10).to_s
}
while carry > 0
  while d.include?(carry)
    carry += 1
  end
  carry = carry/10
  ret += (carry%10).to_s
end

puts ret.reverse.to_i
