arr = gets.chomp.split(" ")
if (arr.select { |v| v == "5" }.size == 2 && arr.select { |v| v == "7" }.size == 1)
  puts "YES"
else
  puts "NO"
end
