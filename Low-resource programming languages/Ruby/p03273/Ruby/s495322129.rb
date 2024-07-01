h,w=gets.split.map(&:to_i)
a=h.times.map{gets.chomp.split('')}
a.delete_if{|l|l.all?(".")}
a=a.transpose.delete_if{|l|l.all?(".")}
a.transpose.each{|ans|puts ans.join}
