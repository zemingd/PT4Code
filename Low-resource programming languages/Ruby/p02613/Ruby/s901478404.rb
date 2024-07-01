gets
h = $<.tally
["AC\n", "WA\n", "TLE\n", "RE\n"].each{|k|
	puts"#{k.chomp} x #{h[k]||0}"
}
