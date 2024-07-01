while 	ahuu = gets.split.map(&:to_i)
	break if ahuu == [0,0]
	puts ahuu.sort * ' '
end