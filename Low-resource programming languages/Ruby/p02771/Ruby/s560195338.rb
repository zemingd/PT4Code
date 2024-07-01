nums = gets.split(" ").map(&:to_i)
hash = nums.map{|x| [x,true] }.to_h
puts hash.size == 2 ? "Yes" : "No"