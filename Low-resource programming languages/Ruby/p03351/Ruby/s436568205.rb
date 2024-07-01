a,b,c,d = gets.split(" ").map { |e| e.to_i }

if a-c <= d
  puts "Yes"
elsif a-b <= d and b-c <= d
  puts "Yes"
else
  puts "No"
end