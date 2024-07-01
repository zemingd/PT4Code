cost  = STDIN.read.split("\n").map(&:to_f)
tail = cost.map{|x| x-((x/10).floor*10)}.map(&:to_i).find_all{|x| x != 0}.min
print cost.map{|x| (x/10).ceil*10}.map(&:to_i).sum - 10 + tail
