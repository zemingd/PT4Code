(a,b)=STDIN.read.split
puts ((1..320).map{|t|t*t}).include?((a+b).to_i) ? 'Yes' : 'No'