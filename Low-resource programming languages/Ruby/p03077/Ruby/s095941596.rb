n = gets.chomp.to_i
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
min = 10**16
[a,b,c,d,e].each do |t|
  if min > t
    min = t
  end
end
if (n % min) == 0
  puts n / min + 4
else
  puts n / min + 5
end
