s = gets.chomp.split('').map(&:to_s)

if(s[0] == s[1] && s[0] == s[2])
puts "No"
else
puts "Yes"
end
