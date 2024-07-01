chash = Hash.new()
chash.default = 0

gets.split( "" ).map { |c|
	chash[ c.downcase ] += 1
}

for i in ( "a".ord .. "z".ord )
	puts( "#{i.chr} : #{chash[i.chr]}" )
end