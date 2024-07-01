s = gets.strip.split("/").map(&:to_i)
if s[0] < 2019
  puts "Heisei"
elsif s[0] > 2019
  puts "TBD"
else
  if s[1]==01 || s[1]==02 || s[1]==03 || s[1]==04
    puts "Heisei"
  else
    puts "TBD"
  end
end