arr = gets.chomp.split(' ').map{|j| j.to_i}
a = arr[0]
b = arr[1]
num = arr[2]
max = 0
i = 0
while i <= num
  if max < ((a * i)/b) - a * (x/b)
    max = ((a * i)/b) - a * (x/b)
  end
  i += 1 
end
print max