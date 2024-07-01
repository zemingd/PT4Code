s = gets.split
sn, tn = gets.split.map(&:to_i)
u = gets.to_s

if u == s[0]
    puts "#{sn - 1} #{tn}"
else
    puts "#{sn} #{tn - 1}"
end