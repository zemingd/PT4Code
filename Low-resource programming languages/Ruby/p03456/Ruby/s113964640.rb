n=gets.gsub(" ", "").to_i
puts (1..101).any?{|i|i*i==n} ? :Yes: :No