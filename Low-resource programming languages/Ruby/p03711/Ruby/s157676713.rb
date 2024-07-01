x,y=gets.split.map &:to_i
puts ((5546>>x&1)==(5546>>y&1)&&(2640>>x&1)==(2640>>y&1) ? :Yes : :No)
