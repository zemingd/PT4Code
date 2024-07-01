a, b, c = gets.chomp.split.map(&:to_i)

ans = "YES"
i = 1
loop do
  if a * i % b == c
    ans = "YES"
    break
  elsif a * i % b == 0
    ans = "NO"
    break
  end
  i += 1
end

puts ans