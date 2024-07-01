s = gets.chomp
# n = gets.to_i
# m = gets.split.map(&:to_i)

s = s.gsub("hi", "")
puts s.empty? ? "Yes" : "No"