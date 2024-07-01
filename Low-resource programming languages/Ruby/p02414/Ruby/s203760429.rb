n, m, l = gets.split( " " ).map { | val | val.to_i }

matrixA = []
matrixB = []
matrixC = Array.new( n ) {
	Array.new( l, 0 )
}

n.times {
	matrixA.push( gets.split( " " ).map { | val | val.to_i } )
}
m.times {
	matrixB.push( gets.split( " " ).map { | val | val.to_i } )
}

output = []
for i in ( 0 ... n )
	for j in ( 0 ... l )
		for k in ( 0 ... m )
			matrixC[i][j] += ( matrixA[i][k] * matrixB[k][j] )
		end
		output.push( matrixC[i][j] )
		output.push( " " )
	end
	output.pop
	output.push( "\n" )	
end

print( output.join  )