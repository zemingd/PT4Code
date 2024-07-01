n=gets.to_i
a=gets.split.map(&:to_i)
puts [*-1.step(-n,-2),*-2.step(-n,-2).reverse_each].map{|i|a[i]}*" "