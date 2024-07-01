n = gets.to_i

a = gets.split(" ").map(&:to_i).sort


for j in 0..n-3
  if a[j]^a[j+2] != a[j+1]
    puts "No"
    exit
  end
end
if a[n-1]^a[0] != a[n-2]
  puts "No"
    exit
end

if a[n-1]^a[1] != a[0]
  puts "No"
    exit
end

puts "Yes"

