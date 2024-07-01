a,b,c = readline.split(' ').map(&:to_i).sort

if a+b == c then
  puts "Yes"
else
  puts "No"
end