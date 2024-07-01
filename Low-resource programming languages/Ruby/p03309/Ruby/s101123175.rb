n = gets.to_i
arr = gets.split(" ").map.with_index{|x,i| x.to_i-(i+1)}

s = Float::INFINITY

arr.uniq.each do |x|
  b = -x
  s = [s,arr.inject(0){|sum,x| sum + (x+b).abs}].min
end

puts s