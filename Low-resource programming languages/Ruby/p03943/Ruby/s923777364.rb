ar = gets.split.map(&:to_i)

if ar[0] + ar[1] == ar[2]
puts "Yes"
elsif ar[1] + ar[2] == ar[0]
puts "Yes"

elsif ar[0] + ar[2] == ar[1]
puts "Yes"
else
puts "No"
end