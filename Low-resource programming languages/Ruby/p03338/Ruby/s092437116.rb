n=gets.to_i
s=gets.chomp.split""
p Range.new(0, n).reduce(0) {|acc, i| [acc, (s.slice(0,i) & s.slice(i,n)).length].max }