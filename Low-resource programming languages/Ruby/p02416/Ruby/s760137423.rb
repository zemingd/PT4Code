while true
a = gets.split("").map(&:to_i).inject(:+)
break if a == 0 
puts a
end