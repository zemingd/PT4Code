n, k = gets.split(' ').map{|val| val.to_i}
h_arr = gets.split(' ').map{|val| val.to_i}.sort.reverse[k..-1] || []

output = h_arr.empty? ? 0 : h_arr.inject(&:+)
           
puts output