css = Array.new(3) { gets.chomp }
ans = Array.new(3) { |i| css[i][i] }.join
puts ans
