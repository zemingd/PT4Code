puts gets.split.map(&:to_i).permutation(3).map{|x,y,z| [y-x, z-y].map(&:abs).inject(&:+)}.min