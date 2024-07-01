N = gets.to_i
ab = $<.read.split.map(&:to_i).each_slice(2).sort_by{|_,y|y}

tmp = 0
res = true
ab.each{ |a, b| tmp+=a ; res &= tmp <= b }
puts res ? "Yes" : "No"
