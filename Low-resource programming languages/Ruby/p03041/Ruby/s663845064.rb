n, k = gets.split.map(&:to_i)
s= gets.chomp

ans = ''
(0..n-1).each do |i|
  if i == k-1
    ans += s[i].downcase
  else
    ans += s[i]
  end
end
puts ans