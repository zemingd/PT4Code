l=0;gets;p $<.map{|l|l.split.reverse.map &:to_i}.sort.count{|a,b|l<=b&&l=a}