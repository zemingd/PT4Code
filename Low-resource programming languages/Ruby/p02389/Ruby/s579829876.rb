array = gets.split(" ").map{|s| s.to_i};
puts (array[0] * array[1]).to_s(10) + " " + ((array[0] + array[1]) * 2).to_s(10);