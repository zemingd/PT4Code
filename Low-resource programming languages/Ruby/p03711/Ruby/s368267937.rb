x,y = gets.split.map(&:to_i)

a = Array.new
b = Array.new

a[0] = 1
a[1] = 3
a[2] = 5
a[3] = 7
a[4] = 8
a[5] = 10
a[6] = 12

b[0] = 4
b[1] = 6
b[2] = 9
b[3] = 11

switch = 0

if x == 2 && y == 2
 switch = switch + 1
end

for i in 0..6
 for j in 0..6
  if x == a[i] && y == a[j]
   switch = switch + 1
  end
 end
end

for i in 0..3
 for j in 0..3
  if x == b[i] && y == b[j]
   switch = switch + 1
  end
 end
end

if switch == 1
 puts("Yes")
 else puts("No")
end