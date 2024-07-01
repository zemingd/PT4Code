loop.with_index{|_, i|
    x = gets.to_i
    break if x == 0
    puts "Case #{i+1}: #{x}"
}