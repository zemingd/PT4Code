a,b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp

if s[a] == "-" && (s[0..(a-1)] + s[(a+1)..-1]).match(/\d+/) then
  puts "Yes"
else
  puts "No"
end

