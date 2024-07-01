n = gets.chomp.to_i
array_n = n.to_s.split("").map { |e| e.to_i }
s = 0
for i in 0..array_n.length-1 do
  s += array_n[i]
end

if n % s == 0
  puts "Yes"
else
  puts "No"
end
