s = gets.split
sn, tn = gets.split.map(&:to_i)
u = gets.to_s

if u == s[0]
  puts "#{sn - 1} #{tn}"
elsif u == s[1]
  puts "#{sn} #{tn - 1}"
else
  puts "#{sn} #{tn}"
end