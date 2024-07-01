n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)

ans = []
(1..n).each do |i|
  if i % 2 == 0
    ans.unshift(a[i-1])
  else
    ans.push(a[i-1])
  end
end
ans.reverse! if n % 2 != 0
puts ans.join(" ")
