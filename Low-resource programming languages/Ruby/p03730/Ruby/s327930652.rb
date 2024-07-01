a, b, c = gets.chomp.split.map(&:to_i)

remainders = [0]
while true do
  break if remainders[-1] == c
  break if remainders[-1] == remainders[0]

  remainders.push((remainders[-1] + a) % b)
end

ans = remainders[-1] == c ? "YES" : "NO"
puts ans