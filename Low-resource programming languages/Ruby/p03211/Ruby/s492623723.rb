s = gets.chomp.chars
n= 753
array = []
for i in(0..s.size-3)
array.push([s[i],s[i+1],s[i+2]].map!(&:to_i))
end

puts (array.min_by{|a| ((a[0]*100+a[1]*10+a[2]*1)-n).abs}.join.to_i-n).abs
