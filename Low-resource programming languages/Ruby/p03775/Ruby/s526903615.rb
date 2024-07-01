n = gets.chomp.to_f
m = n**(1/2.0)
l = []
(1..m).each do |i| 
  a,b = n.divmod(i)
  if b == 0
    l << [a.to_s.length,i.to_s.length].max()
  end
end

puts l.min()