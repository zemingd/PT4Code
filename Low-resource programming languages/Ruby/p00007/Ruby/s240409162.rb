n=gets.chomp.to_i
yen=100000
knr=1.05
n.times {
	yen=(yen*knr/1000).ceil * 1000
}
puts yen