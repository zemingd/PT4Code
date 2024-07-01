n = gets.chomp.to_i
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
count = 5
min = n
[a,b,c,d,e].each do |t|
  if min > t && t < n
    count += min/t
    min = t
  end
end
puts count
