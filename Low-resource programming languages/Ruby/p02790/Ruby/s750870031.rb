a,b = gets.split(" ")

ab = ""
ba = ""

for i in 1..b.to_i do
  ab += a.to_s
end

for i in 1..a.to_i do
  ba += b.to_s
end

if ab <= ba
  puts ab
else
  puts ba
end