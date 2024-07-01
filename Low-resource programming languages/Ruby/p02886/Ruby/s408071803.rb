n=gets.chomp.to_i
a=gets.chomp.split.map(&:to_i).combination(2).to_a
ans=0
a.map{|a| ans+=(a[0]*a[1])}
puts ans
