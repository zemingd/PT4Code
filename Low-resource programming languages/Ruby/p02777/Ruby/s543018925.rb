s, t = gets.split
sn, tn = gets.split.map(&:to_i)
u = gets.to_s

if u == s
  sn -= 1
  printf("#{sn} #{tn}")
elsif u == t
  tn -= 1
  printf("#{sn} #{tn}")
end
