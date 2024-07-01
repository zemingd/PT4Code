gets
puts gets.split.map(&:to_i).select(&:even?).all?{|x| x%3==0 || x%5 == 0} ? "APPROVED" : "DENIED"