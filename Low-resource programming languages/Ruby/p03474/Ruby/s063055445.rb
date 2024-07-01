ab = gets.split(" ").map(&:to_i)
s = gets.chomp.split("-")
if s.size == 2 && s[0].length == ab[0] && s[1].length == ab[1] then
  puts "Yes"
elsif
  puts "No"
end
