n = gets.strip.to_i
s = readlines.map {|line| line.strip.split('').sort }

p s.group_by(&:itself).map {|e|e.last.length - 1}.reject(&:zero?).map{|num| num*(num+1)/2 }.inject(0, :+)

