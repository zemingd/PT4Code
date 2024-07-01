n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
correct = [*1..n]
miss = 0
n.times do |i|
    miss += 1 if arr[i] != correct[i]
end

puts miss <= 2 ? "YES" : "NO"