N = gets.chomp.to_i
AS = []
yes = ""
N.times do
  last = ""
  first = ""
  tango = gets.chomp
  AS << tango
  last = AS.last[-1]
  if tango.to_s[0] == last
    yes = "Yes"
  end
  if (AS.count - AS.uniq.count) > 0
    yes = "No"
  end
end
puts yes