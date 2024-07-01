n, k = gets.split(' ').map{|val| val.to_i}
h_arr = gets.split(' ').map{|val| val.to_i}.sort.reverse[k..-1]

output = h_arr ? h_arr.inject(&:+) : 0
           
puts output