n = gets.to_i
x = []
y = []
for num in 0..n-1 do
  a = gets.chomp.split(" ")
  a[1] = a[1].to_i
  a[2] = num + 1
  x << a 

  
end
x = x.sort {|l, m| (l[0] <=> m[0]).nonzero? || (m[1] <=> l[1])}

for num in 0..n-1 do
p x[num][2]
end