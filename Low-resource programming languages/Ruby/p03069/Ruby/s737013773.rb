n=gets.to_i
s=gets.chomp
i = s.index('#.')
if i == nil
  puts 0
  return
end
ps = s[0..i]
rs = s[i+1..-1]
psc = ps.size
rsc = rs.size
psbc = ps.count('#')
rsbc = rs.count('#')
puts [psbc + rsbc, (psc-psbc) + (rsc-rsbc), psbc + (rsc-rsbc)].min
