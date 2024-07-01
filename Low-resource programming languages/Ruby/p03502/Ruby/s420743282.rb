n = gets.chomp
n_split_sum = n.split("").map(&:to_i).inject(&:+)
n_num = n.to_i

puts(n_num % n_split_sum == 0 ? 'Yes' : 'No')