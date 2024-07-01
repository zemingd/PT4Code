a, b, c = gets.chomp.split.map(&:to_i)

remainders = [0]
while true do
  break if remainders[-1] == c

  remainders.push((remainders[-1] + a) % b)
  break if remainders[-1] == remainders[0]
end

ans = remainders[-1] == c ? "YES" : "NO"
puts ans