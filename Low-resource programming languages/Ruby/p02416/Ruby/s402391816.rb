until (number=gets.to_i)==0

puts number.split("").map(&:to_i).inject(:+)

end
