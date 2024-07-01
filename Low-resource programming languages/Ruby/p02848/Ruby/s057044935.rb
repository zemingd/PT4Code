n=gets.to_i
puts gets.chop.bytes.map{((_1-?A.ord+n)%26+?A.ord).chr}.join