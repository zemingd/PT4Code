n = gets.to_i - 1
a = gets.split(' ').map(&:to_i)
cnt = 0;

for i in 0..(n-1) do
  for j in i..n do
    if a[i] > a[j] then 
      a[i], a[j] = a[j], a[i]
      cnt += 1
    end
  end
end

puts a.join(' ')
puts cnt