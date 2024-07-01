a,b = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp
if (s[a] != '-')
  puts 'No'
  exit
end

if (s[0...a].match?(/\d/) && s[(a+1)..-1].match?(/\d/))
  puts 'Yes'
else
  puts 'No'
end