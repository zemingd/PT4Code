n = gets.to_i
s = gets.chars
min = 1e6
(1..n).each do |i|
  left = i-2>=0 ? s[0..i-2].count{|k| k == "W"} : 0
  right = s[i..n-1].count{|k| k == "E"}
  sum = left + right
  min = sum if sum < min
end
puts min
