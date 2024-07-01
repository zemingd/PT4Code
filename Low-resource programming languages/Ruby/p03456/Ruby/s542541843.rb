n=gets.gsub(" ", "").to_i
puts (1..10000).any?{|i|i*i==n} ? :Yes: :No