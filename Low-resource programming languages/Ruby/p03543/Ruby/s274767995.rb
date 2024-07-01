s = gets
a = s.split('').map(&:to_i) 
y = 'Yes'
b = 0
t = []
2.times do |i|
  if a[i] == a[i+1]
    b += 1
    if b == 2
      t << 'Yes'
      break
    end
  end
end
for num in 2..3 do
  if a[num] == a[num+1]
    b += 1
    if b == 3
      t << 'Yes'
      break
    end
  end
end
if t.include?('Yes')
  puts 'Yes'
else
  puts 'No'
end