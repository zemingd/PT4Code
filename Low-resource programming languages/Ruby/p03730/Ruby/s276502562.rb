a,b,c=gets.split.map &:to_i;puts [*1..b].any?{|i|a*i%b==c}?:YES: :NO