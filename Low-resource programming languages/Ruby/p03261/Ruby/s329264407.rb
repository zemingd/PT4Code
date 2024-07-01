N = gets.chomp.to_i
AS = []
yes = ""
N.times do
  last = ""
  tango = gets.chomp
  if tango.to_s.length > 10
    break yes = "No"
  end
  AS << tango
  last = AS.last[-1]
  if tango.to_s[0] == last
    yes = "Yes"
  end
  if (AS.count - AS.uniq.count) > 0
    break yes = "No"
  end
end
if yes == "Yes"
  puts yes
else
  puts "No"
end
