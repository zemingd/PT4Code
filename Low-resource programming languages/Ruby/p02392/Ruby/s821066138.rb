a,b,c = gets.split(" ").map(&:to_i)

if a < b
  if b < c
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end