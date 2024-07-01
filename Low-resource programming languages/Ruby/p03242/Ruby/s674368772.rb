n = gets.strip.split("").map(&:to_i)
puts n.map{|i|
if i == 9
  i = 1
elsif i == 1
  i = 9
end}.join