n=gets.to_i
puts gets.chomp.bytes.map{|e|(((e-?A.ord)+n)%26+?A.ord).chr}.join