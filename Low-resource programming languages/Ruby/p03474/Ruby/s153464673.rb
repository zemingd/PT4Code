A, B = gets.split.map(&:to_i)
S = gets.chomp
if /\d{#{A}}-\d{#{B}}/.match(S)
  puts "Yes"
else
  puts "No"
end
