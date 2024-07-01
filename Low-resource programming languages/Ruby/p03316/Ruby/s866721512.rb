N = gets.chomp
tmp = N.split("")
ans = 0

tmp.each do |f|
  ans += f.to_i
end

if N.to_i.modulo(ans) == 0
  puts "Yes"
else
  puts "No"
end