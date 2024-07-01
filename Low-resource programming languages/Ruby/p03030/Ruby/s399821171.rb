n = gets.to_i
sp = Hash.new{|hash,key| hash[key] = []}
n.times do |i| 
    s,pp = gets.chomp.split
    sp[s] << [i+1, pp.to_i]
end

sp.each{|_,value| value.sort_by!{|e| -e[1]}}
sp = sp.to_a.sort_by!{|e| e[0]}
puts sp.map{|e| e[1].map{|e| e[0]}}
