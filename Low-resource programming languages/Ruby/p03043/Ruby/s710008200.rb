N, K = gets.split(/\s+/).map(&:to_i)
numerator = 0.0
kakeru = 1
waru   = 1.0
N.downto(1){|dice|
	until K <= dice * kakeru
		kakeru *= 2
		waru   /= 2.0
	end
	numerator += waru
}
p(numerator / N)
