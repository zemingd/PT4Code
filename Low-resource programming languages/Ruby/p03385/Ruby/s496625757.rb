s=gets.split("")
sorteds = s.sort!.join.strip
if (sorteds).eql?('abc')
  puts "Yes"
else
  puts "No"
end
