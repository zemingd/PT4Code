li,ri=gets.chomp.split(" ").map(&:to_i)[0]
l= li%2019
r= ri%2019
if l > r
  puts 0
else
  puts l*(l+1)
end