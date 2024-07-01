officalhouse = Array.new( 4*3*10, 0 )

n = gets.to_i
n.times {
	b, f, r, v = gets.split( " " ).map { | val | val.to_i }
	bfr = (b-1)*30+(f-1)*10+(r-1)
	officalhouse[bfr] = officalhouse[bfr] + v;
}

for b in ( 0 .. 3 )
	for f in ( 0 .. 2 )
		for r in ( 0 .. 9 )
			print( " #{officalhouse[ b*30 + f*10 + r ]}" )
		end
		print( "\n" )
	end
	print( "####################\n" ) if b < 3
end