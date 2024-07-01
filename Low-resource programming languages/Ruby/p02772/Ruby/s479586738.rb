gets
puts (gets.split.map(&:to_i).select(&:even?).all?{|e|e%3==0 || e%5==0} ? :APPROVED : :DENIED)
