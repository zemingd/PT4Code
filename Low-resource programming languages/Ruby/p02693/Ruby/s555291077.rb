k = gets.chomp.to_i
a,b = gets.chomp.split.map(&:to_i)
c = 0
for n in a..b do
  if n%k==0
    c += 1
  end
end
if c==0
  puts "NG"
else
  puts "OK"
end