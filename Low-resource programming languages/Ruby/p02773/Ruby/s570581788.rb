N = gets.to_i
S = N.times.map{gets.chomp}

aa = S.group_by(&:itself).map{ |k, v| [k, v.count] }.to_h

max = aa.values.max
puts aa.select{|_,v| v == max}.keys.sort