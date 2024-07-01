gets
$<.map{|l|a,b,c,d,e,f,g,h=l.split.map &:to_f
puts ((a-c)*(f-h)-(b-d)*(e-g)).abs<1e-9?:YES: :NO}