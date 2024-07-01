a,b = gets.chomp.split(" ").map(&:to_i)
if a%2==0 || b%2==0 then
  puts "No"
else
  puts "Yes"
end
