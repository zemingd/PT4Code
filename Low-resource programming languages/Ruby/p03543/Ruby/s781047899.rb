n = gets.chars.map(&:to_i)
if n[0]==n[1] && n[1]==n[2]
  puts "Yes"
elsif n[1]==n[2] && n[2]==n[3]
  puts "Yes"
else
  puts "No"
end

  