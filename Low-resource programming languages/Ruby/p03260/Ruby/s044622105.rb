puts ((gets.chomp.split.map(&:to_i)).inject(:*))%2==1 ? "Yes" : "No"