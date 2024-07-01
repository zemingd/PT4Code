a, b, c = STDIN.gets.split.map(&:to_i)
if a< b then
  if b< c then
    puts "Yes"
  else 
    puts "No"
  end
else 
  puts "No"
end