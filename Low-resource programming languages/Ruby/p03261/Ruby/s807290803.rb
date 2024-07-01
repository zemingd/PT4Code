n = gets.to_i
a =[]
ans = "Yes"
for num in 0..n-1 do
words = gets.chomp
  a << words
end

for num in 0..n-1 do
  b = a.count(a[num])
  if b == 2
    ans = "No"
  end
end

for num in 0..n-2 do
  c = a[num].slice(-1)
  d = a[num+1].slice(0)
  if c != d 
    ans = "No"
  end
end
puts ans