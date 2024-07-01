a,b=gets.chomp.split(' ').map(&:to_i)
if a==b
  puts (a.to_s)*b
elsif a>b
  puts (b.to_s)*a
else
  puts (a.to_s)*b
end