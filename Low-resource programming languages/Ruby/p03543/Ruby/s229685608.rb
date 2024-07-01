a,b,c,d=gets.split("").map(&:to_i)
if b == c
  if a == b || d == b
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end