N = gets
tmp = N.to_s.chomp.split("")
ans = 0

tmp.each do |f|
  ans += f.to_i
end

if (N.module(ans)) == 0
  puts "Yes"
else
  puts "No"
end