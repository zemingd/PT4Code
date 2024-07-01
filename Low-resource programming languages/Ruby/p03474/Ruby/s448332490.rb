a,b = gets.split.map(&:to_i)
s = gets.chomp

def is_digit(s)
  s =~ /^\d+$/
end

befor = s[0, a]
after = s[a+1..-1]
if is_digit(befor) && is_digit(after) && s[a] == "-"
  puts "Yes"
else
  puts "No"
end
