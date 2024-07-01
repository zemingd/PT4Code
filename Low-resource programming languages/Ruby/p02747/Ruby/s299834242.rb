s = $stdin.gets.chomp!
l = s.length


puts "hi" * (l/2)

if l % 2 != 0
  puts "No"
else
  if "hi" * (l/2) == s
    puts "Yes"
  else
    puts "No"
  end
end
