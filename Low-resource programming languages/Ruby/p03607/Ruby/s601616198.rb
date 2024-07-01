n=gets.to_i
a=Array.new(n).map {gets.to_i}
cnt=0
a.map{|s| cnt+=1 if a.count(s).odd? }
puts cnt