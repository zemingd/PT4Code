haiku = gets.split(" ").map(&:to_i)
haiku.sort!
if haiku == [5, 5, 7]
  puts "YES\n"
else
  puts "NO\n"
end
