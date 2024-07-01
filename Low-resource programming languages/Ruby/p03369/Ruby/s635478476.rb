a=gets.chomp.split("").map { |e|
if e == "o"
  e = 1.to_i
else
  e = 0.to_i
end   }.inject(:+)

puts 700+100*a
