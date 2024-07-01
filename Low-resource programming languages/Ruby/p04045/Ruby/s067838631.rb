def gli
  gets.split.map(&:to_i)
end

n, k = gli
d = gli
s = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

ret = ""
carry = 0
n.to_s.reverse.each_char {|c|
  g = c.to_i + carry
  while d.include?(g%10)
    g += 1
  end
  if g > 9
    carry = g/10
  else
    carry = 0
  end
  ret += (g%10).to_s
}
if carry > 0
  while d.include?(carry)
    carry += 1
  end

  ret += carry.to_s
end

puts ret.reverse.to_i
