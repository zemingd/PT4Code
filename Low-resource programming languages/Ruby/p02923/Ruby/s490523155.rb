n = gets.to_i
h = gets.split.map(&:to_i)

ans, tmp = [0, 0]
(1...n).each do |i|
  if h[i] > h[i - 1]
    ans = ans > tmp ? ans : tmp
    tmp = 0
  else
    tmp += 1
  end
end

puts ans > tmp ? ans : tmp