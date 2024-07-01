n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)

ans = []
(1..n).each do |n|
  ans.push(a[n-1])
  ans.reverse!
end
puts ans.join(" ")
