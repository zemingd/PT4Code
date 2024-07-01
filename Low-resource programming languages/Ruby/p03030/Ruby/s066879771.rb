n=gets.to_i
k=n.times.map{gets.split}
k = k.map.with_index(1){|m,i| [m[0], m[1].to_i, i]}
k.sort!{|a,b|b[1] <=> a[1]}
i = 0
k.sort_by! {|v| [v[0], i += 1] }
puts k.map{|m|m[2]}