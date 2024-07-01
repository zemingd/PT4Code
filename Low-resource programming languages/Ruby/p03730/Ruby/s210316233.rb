a, b, c = gets.split.map(&:to_i)
ans = 'NO'
1.upto(b) do |i|
  if a * i % b == c
    ans = 'YES'
    break
  end
end

puts ans