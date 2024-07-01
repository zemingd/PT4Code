n = gets.to_i
a = gets.split.map(&:to_i)
unmatch = 0
for num in 1..n do
  unmatch += 1 unless a[num-1] == num
end

if unmatch == 0 || unmatch == 2
  puts "YES"
else
  puts "NO"
end