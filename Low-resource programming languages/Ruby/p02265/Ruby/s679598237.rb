n = gets.to_i
eles = []
n.times {
	op = gets.split( " " )
	if "insert" == op[0]
		eles.unshift( op[1] )
	elsif "delete" == op[0]
		i = eles.index( op[1] )
		if i
			eles.delete_at( i )
		end
	elsif "deleteFirst" == op[0]
		eles.shift( )
	elsif "deleteLast" == op[0]
		eles.pop
	end
}

puts( eles.join( " " ) )