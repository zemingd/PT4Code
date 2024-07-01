a, b, c = gets.chomp.split.map(&:to_i)

remainders = [0]
while true do
  break if remainder[-1] == c
  break if remainder[-1] == remainder[0]

  remainders.push((remainder[-1] + a) % b)
end

ans = remainder[-1] == c ? "YES" : "NO"
puts ans