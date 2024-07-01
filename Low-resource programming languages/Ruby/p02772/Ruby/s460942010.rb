gets
puts gets.split.map(&:to_i).any?{|a|a.even?&&a%3*a%5!=0} ? :DENIED: :APPROVED