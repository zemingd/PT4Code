s=gets.split("/").map(&:to_i)
if s[0]<2019
  puts "Heisei"
elsif s[0]>2019
  puts "TBD"
else
  if s[1]<=4
    puts "Heisei"
  else
    puts "TBD"
  end
end
