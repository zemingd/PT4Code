until (number=gets)=="0"

puts number.split("").map(&:to_i).inject(:+)

end
