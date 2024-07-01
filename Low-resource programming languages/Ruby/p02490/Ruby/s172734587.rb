while ahuu = gets.split
	ahuu.map{|hoo|hoo = hoo.to_i}
	break  if ahuu[0] == 0
	puts ahuu.sort * ' '
end