inputs=$stdin.read.split("\n")
ab =inputs[1..-1].map{|x| x.split(/\s/).map(&:to_i)}
sum=0
ab.sort! {|x,y| x[1]==y[1] ? x[0] <=>y[0] : x[1] <=> y[1] }
ab.each do |(a,b)|
 sum+=a
 if sum > b
   puts "No"
   return
 end
end

