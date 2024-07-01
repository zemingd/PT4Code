a,b=gets.split.map(&:to_i)
if a%2==0
  puts "Even"
else
  if b%2==1
    puts "Odd"
  else
    puts "Even"
  end
end