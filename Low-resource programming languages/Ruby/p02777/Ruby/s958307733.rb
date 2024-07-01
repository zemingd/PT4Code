s, t = gets.split.to_s
sn, tn = gets.split.map(&:to_i)
u = gets.to_s

# if u == s
#   puts "#{sn - 1} #{tn}"
# elsif u == t
#   puts "#{sn} #{tn - 1}"
# else
#   puts "#{sn - 1} #{tn}"
# end

puts "#{sn - 1} #{tn - 1}"