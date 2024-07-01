N = gets.chomp.to_i
S = gets.chomp.chars
ans = 0
(N - 1).times do |i|
  a = S.slice(0..i).uniq
  b = S.slice(i+1..-1).uniq
  max = 0
  a.each do |j|
    max += 1 if b.include?(j)
  end
  ans = max if max > ans
end
puts ans
