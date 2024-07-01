n = gets.chomp.to_i
nums = n.times.map { |_| gets.to_i }

h = Hash.new(0)
nums.each do |num|
  h[num] += 1
end

puts h.select{|_,v|v.odd?}.size