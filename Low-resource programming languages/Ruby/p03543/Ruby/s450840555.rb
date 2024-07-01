N = gets.chomp.split("").map(&:to_i)

c = 0
for i in 0..2 do
  c += 1 if N[i] == N[i + 1]
end

if c >= 2 then
  puts "Yes"
else
  puts "No"
end