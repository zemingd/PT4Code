n = gets.to_i
p = gets.split.map(&:to_i)
cnt = 0
for i in 0 .. n - 1 do
  cnt += 1 if p[i] != i + 1
end
if cnt <= 2 then
  puts "YES"
else
  puts "NO"
end

