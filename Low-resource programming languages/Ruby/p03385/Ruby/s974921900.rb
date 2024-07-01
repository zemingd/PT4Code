s = gets.chomp.to_s
if s == "abc" or s == "acb" or s == "bac" or s == "bca" or s == "cab" or s == "cba"
    puts "Yes"
  else
    puts "No"
end