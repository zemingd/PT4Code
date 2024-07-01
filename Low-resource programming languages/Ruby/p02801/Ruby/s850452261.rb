c = gets.chomp
als = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
als.each_with_index do |a, idx|
  puts als[idx+1] if a == c
end