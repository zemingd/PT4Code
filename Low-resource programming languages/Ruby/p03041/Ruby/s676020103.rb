input_nk = gets.chomp
n,k = input_nk.split.collect{ |item| item.to_i}
input_str = gets.chomp
input_str[k-1] = input_str[k-1].downcase
puts input_str