a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i
num = 0
total = 0

for i in 0..a do
  for j in 0..b do
    for k in 0..c do
      total = 500*a + 100*b + 50*c
      num+=1 if total == x
    end
  end
end
print num