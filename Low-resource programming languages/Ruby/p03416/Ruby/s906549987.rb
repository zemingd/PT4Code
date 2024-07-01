a, b = getc.chomp.split(' ').map(&:to_i)
count = 0

(a..b).each do |i|
  str = i.to_s
  count += 1 if str[0] == str[-1] && str[1] == str[-2]
end
print count