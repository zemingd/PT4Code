s, t = gets.chomp.split
sn, tn = gets.chomp.split.map(&:to_i)
u = gets.chomp.to_s

if u == s
  sn -= 1
  printf("#{sn} #{tn}")
elsif u == t
  tn -= 1
  printf("#{sn} #{tn}")
end
