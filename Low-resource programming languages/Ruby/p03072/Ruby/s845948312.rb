N = gets.to_i
H = gets.split.map(&:to_i)
ans = 1
m = 0
if N == 1
  puts 1
else
  (1..N - 1).each do |i|
    if H[m] <= H[i]
      ans += 1
      m = i
    end
  end
  puts ans
end