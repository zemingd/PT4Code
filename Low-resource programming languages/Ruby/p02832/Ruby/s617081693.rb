N = gets.chomp.to_i
arr = gets.chomp.split(" ").map{|s| s.to_i }

count = 1
N.times do |i|
  count += 1 if arr[i] == count
end

puts count != 1 ? N - count + 1 : -1
