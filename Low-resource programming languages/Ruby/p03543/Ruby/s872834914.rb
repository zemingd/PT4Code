puts (gets.chomp.chars.each_cons(3).any?{|c| c.uniq.size == 1} ? 'Yes' : 'No')

