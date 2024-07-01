sn=0
(n=gets.chomp).chars{|ch| sn+=ch.to_i}
puts n.to_i%sn==0 ? "Yes":"No"
