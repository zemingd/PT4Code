N = gets.chomp.split("").map(&:to_i)

c = 0
for i in 0..1 do
  c += 1 if N[i] == N[i + 1] && N[i + 1] == N[i + 2]
end

if c >= 1 then
  puts "Yes"
else
  puts "No"
end