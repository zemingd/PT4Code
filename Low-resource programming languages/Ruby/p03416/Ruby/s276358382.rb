a,b=gets.split.map &:to_i
p [*a..b].map(&:to_s).count{|i|i==i.reverse}