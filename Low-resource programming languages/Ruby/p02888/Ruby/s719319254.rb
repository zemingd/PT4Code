n = gets.to_i
l = gets.split.map(&:to_i).sort

ans = 0
l.combination(3) {|arr| ans += 1 if arr[2] < arr[1] + arr[0]}
puts ans