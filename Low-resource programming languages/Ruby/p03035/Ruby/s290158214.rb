line = $stdin.gets.split.map{|v| v.to_i }
A = line[0]
B = line[1]

if A >= 13 then
  puts B
elsif A >= 6 then
  puts B / 2
elsif A 
  puts 0
end