N=gets.to_i
num = "A".ord
puts gets.chomp.split("").map{|str| ((str.ord - num + N)%26+num).chr}.join