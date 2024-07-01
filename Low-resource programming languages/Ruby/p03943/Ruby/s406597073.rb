s=(C=gets.split.map &:to_i).inject(0,&:+)
puts C.any?{|v|2*v==s}?'Yes':'No'