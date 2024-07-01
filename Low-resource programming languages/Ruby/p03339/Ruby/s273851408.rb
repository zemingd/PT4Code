gets
s = gets.chomp

nc = 0
ncs = [0]

s[0..-2].each_char do |c|
  nc += 1 if c == 'W'
  ncs << nc
end

wc = 0
wcs = [0]
s.reverse[0..-2].each_char do |c|
  wc += 1 if c == 'E'
  wcs.unshift wc
end

ret = 1000000

ncs.zip(wcs).each do |n,s|
  ret = n+s if n+s < ret
end

p ret