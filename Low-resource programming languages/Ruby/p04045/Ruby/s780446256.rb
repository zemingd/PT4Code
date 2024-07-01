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
  while d.include?(carry%10)
    carry += 1
  end
  ret += (carry%10).to_s
  carry = carry/10
end

puts ret.reverse.to_i
