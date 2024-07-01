S = gets.chomp
number_list = (0..(S.size - 3)).map { |i| S[i..(i + 3 - 1)].to_i }
answer = number_list.map { |n| (n - 753).abs }.sort.first
puts answer
