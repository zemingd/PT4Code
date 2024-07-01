n=gets.to_i
puts gets.chomp.chars.map{|x| ((x.ord-?A.ord+n)%26+?A.ord).chr}.join