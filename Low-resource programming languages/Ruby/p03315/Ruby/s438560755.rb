S = gets.chomp
ans = S.chars.map{|c| "#{c}1".to_i }.sum
puts ans