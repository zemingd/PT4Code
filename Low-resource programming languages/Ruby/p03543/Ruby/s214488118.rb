n=gets.chomp.split("").map(&:to_i)
count = 0
3.times do |i|
 count += 1 if n[i] == n[i+1]
end
puts count >= 3 ? "Yes" : "No"