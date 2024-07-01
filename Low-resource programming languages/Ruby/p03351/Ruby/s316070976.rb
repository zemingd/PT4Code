a,b,c,d = gets.split(" ").map { |e| e.to_i }

if (a-c).abs <= d
  puts "Yes"
elsif (a-b).abs <= d and (b-c).abs <= d
  puts "Yes"
else
  puts "No"
end