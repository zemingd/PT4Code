n = gets.chomp.split('').map(&:to_i)
u = n.uniq
# puts "n:#{n}, u:#{u}"
if u.size == 1
  puts "Yes"
elsif u.size > 2
  puts "No"
else
  f = u[0]
  s = u[1]
  if (f == n[0] && s == n[3]) || (f == n[3] && s == n[1])
    puts "Yes"
  else
    puts "No"
  end
end