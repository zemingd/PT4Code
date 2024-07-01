nedan = gets.to_i
ichi = gets.to_i

while nedan > 500 
  nedan = nedan - 500
end
p nedan
if nedan < ichi 
  puts "YES"
else
  puts "NO"
end