n = gets.to_i
array_p = gets.split(" ").map!{|i | i.to_i}

swap = 0

array_p.each_with_index do |num, index|
  unless num == (index + 1)
    swap = swap + 1
  end
end

(swap == 0 || swap == 2) ? puts "YES" : puts "NO"