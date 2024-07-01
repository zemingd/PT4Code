gets
puts gets.split.map(&:to_i).select(&:even?).all?{|a|a%3==0||a%5==0}?:APPROVED: :DENIED