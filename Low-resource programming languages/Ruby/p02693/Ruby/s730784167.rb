k=gets.to_i
a,b=gets.split.map(&:to_i)
if a/k==b/k&&a%k!=0
  puts "NG"
else
  puts "OK"
end
