a,b = gets.split.map(&:to_i)
puts (1..3).map{|c| (a * b * c).odd? }.any? ? :Yes : :No