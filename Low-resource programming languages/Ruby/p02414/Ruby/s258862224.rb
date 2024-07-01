n, m, l = gets.split( " " ).map { | val | val.to_i }

matrixA = []
matrixB = []

n.times {
	matrixA.push( gets.split( " " ).map { | val | val.to_i } )
}
m.times {
	matrixB.push( gets.split( " " ).map { | val | val.to_i } )
}

output = []
c = 0
for i in ( 0 ... n )
	for j in ( 0 ... l )
		c = 0
		for k in ( 0 ... m )
			c += ( matrixA[i][k] * matrixB[k][j] )
		end
		output.push( c )
		output.push( " " )
	end
	output.pop
	output.push( "\n" )	
end

print( output.join  )