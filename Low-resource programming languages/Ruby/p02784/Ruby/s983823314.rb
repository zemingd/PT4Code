H, N = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
for i in 0..N-1 do
  H -= a[i]
end
if H <= 0
  puts "Yes"
else
  puts "No"
end