until (number=gets.chomp)=="0"

puts number.split("").map(&:to_i).inject(:+)

end
