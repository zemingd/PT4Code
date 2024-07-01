n = gets.to_i
a = gets.chomp.split(' ').map{|v| v.to_i}
put_list = []

a.each_index {|i|
    put_list.push(i+1) if a[i] == 1
}

puts put_list.length
puts put_list.join(' ') if put_list.length > 0