a,b=gets.split.map( &:to_i )

c = b if a >= 13
c = b / 2 if a.between?( 6, 12 )
c = 0 if a <= 5

p c