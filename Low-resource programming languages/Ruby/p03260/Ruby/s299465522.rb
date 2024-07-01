a,b=gets.chomp.split(" ").map { |e| e.to_i }

if a%2 == 0 || b%2== 0
  puts "No"
else
  puts "Yes"
end
