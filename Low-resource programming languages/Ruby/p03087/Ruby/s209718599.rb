n, q = gets.split.map(&:to_i)
s = gets.chomp
lr = q.times.map { gets.split.map(&:to_i) }
arr = Array.new(n, 0)]
arr[0] = 0
sum = 0
(1..n-1).each do |i|
  sum += 1 if s[i-1..i] == "AC"
  arr[i] = sum
end
puts lr.map{ |m| arr[m[1]-1] - arr[m[0]-1] }
