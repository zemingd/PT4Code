a = gets.chomp.split("/").map(&:to_i)
ans = "Heisei"
if a[0]< 2019
  puts ans
elsif a[0] > 2019
  puts "TBD"
elsif a[1] <= 4
  puts ans
else
  puts "TBD"
end