number=gets.split("").map(&:to_i).inject(:+)
break if number==0
puts number

