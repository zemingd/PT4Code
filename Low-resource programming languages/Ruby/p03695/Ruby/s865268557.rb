gets
r=[0]*9
gets.split.map(&:to_i).each{|a|r[[a/400, 8].min]+=1}
x=r[0...8].count{|e|e>0}
puts "#{x>0 ? x : 1} #{x+r[8]}"
