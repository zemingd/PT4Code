n ,k=gets.split.map &:to_i
s = gets.chomp

new_s = s.split("").map.with_index { |char, i| i+1 == k ? char.downcase : char }
puts new_s.join("")