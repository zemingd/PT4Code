class Dice
	TOP=0
	FRONT=1
	RIGHT=2
	LEFT=3
	BACK=4
	BOTTOM=5
	
	def initialize( nums )
		@face = nums
	end

	def rolltoTopIndex( faceindex )
		case faceindex
		when FRONT
			roll( "N" )
		when RIGHT
			roll( "W" )
		when LEFT
			roll( "E" )
		when BACK
			roll( "S" )
		when BOTTOM
			roll( "NN" )
		when TOP
		end
	end
	
	def roll( actions )
		for i in ( 0 ... actions.length )
			t = 0
			case actions[i]
			when "E"
				t =   @face[ TOP  ]
				@face[ TOP  ] =   @face[ LEFT  ]
				@face[ LEFT  ] =   @face[ BOTTOM  ]
				@face[ BOTTOM  ] =   @face[ RIGHT  ]
				@face[ RIGHT  ] = t
			when "N"
				t =   @face[ TOP  ]
				@face[ TOP  ] =   @face[ FRONT  ]
				@face[ FRONT  ] =   @face[ BOTTOM  ]
				@face[ BOTTOM  ] =   @face[ BACK  ]
				@face[ BACK  ] = t
			when "S"
				t =  @face[ TOP  ]
				@face[ TOP  ] =  @face[ BACK  ]
				@face[ BACK  ] =  @face[ BOTTOM  ]
				@face[ BOTTOM  ] =  @face[ FRONT  ]
				@face[ FRONT  ] = t	
			when "W"
				t =  @face[ TOP  ]
				@face[ TOP  ] =  @face[ RIGHT  ]
				@face[ RIGHT  ] =  @face[ BOTTOM  ]
				@face[ BOTTOM  ] =  @face[ LEFT  ]
				@face[ LEFT  ] = t	
			when "M"
				t =  @face[ FRONT  ]
				@face[ FRONT  ] =  @face[ RIGHT  ]
				@face[ RIGHT  ] =  @face[ BACK  ]
				@face[ BACK  ] =  @face[ LEFT  ]
				@face[ LEFT  ] = t				
			end
		end
	end
	attr_accessor :face
end

def isDiffDice( dice1, dice2 )
	cnt = 0
	diceface = dice2.face
	catch ( :samedice ) do
		for i in ( Dice::TOP .. Dice::BOTTOM )
			if dice1.face[Dice::TOP] == dice2.face[i]
				dice2.rolltoTopIndex( i )
				for j in ( Dice::FRONT .. Dice::BACK )
					if dice1.face[Dice::FRONT] == dice2.face[Dice::FRONT]
						cnt = 0
						for k in ( Dice::TOP .. Dice::BOTTOM )
							if dice1.face[k] == dice2.face[k]
								cnt += 1
							end
						end
						throw :samedice if cnt == 6
					end
					dice2.roll( "M" )
				end
			end
			dice2.face = diceface
		end
	end
	if cnt == 6
		return false
	else
		return true
	end
end	

n = gets.to_i
dices = Array.new( n ) {
	diceface = gets.split( " " ).map { |val| val.to_i }
	Dice.new( diceface )
}


cnt = 0
catch ( :samedice ) do
	for i in ( 0 ... n-1 )
		for j in ( i+1 ... n )
			if isDiffDice( dices[i], dices[j] )
				cnt += 1
			else
				puts( "No" )
				throw :samedice
				break
			end
		end
	end
end

if n == cnt
	puts( "Yes" )
end 