n = gets.chomp!.to_i
h_n = gets.chomp!.split(" ").map(&:to_i)

puts h_n.each_with_index.sum {|h_i, i|
    h_n[0, i].all?{|x| x <= h_i } ? 1 : 0
}
