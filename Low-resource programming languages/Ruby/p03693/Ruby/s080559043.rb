rgb = gets.gsub(' ', '').to_i
if rgb % 4 == 0
    puts "YES"
else
    puts "NO"
end