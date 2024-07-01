n = gets().to_i
a = gets().split(" ")
b = gets().split(" ")
c = gets().split(" ")

sum = 0

index0 = 0
index1 = 0

for i in 0..n-1 do
  if i != 0
    index0 = a[i].to_i-1
  end

  sum += b[a[i].to_i-1].to_i

  if index0-1 == index1
    sum += c[a[i].to_i-2].to_i
  end
    
  index1 = a[i].to_i-1
end

p sum