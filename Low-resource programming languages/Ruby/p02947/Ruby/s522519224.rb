def anagram?(a, b)
  (0..(a.length - 1)).each do |i|
    return false if a.count(a[i]) != b.count(a[i])
  end

  true
end

n = gets.chomp.to_i
s = []
(1..n).each do |i|
  s << gets.chomp.chars
end

cnt = 0
s.each do |i|
  s.each do |j|
    if anagram?(i, j)
      cnt += 1
    end
  end
end

puts (cnt - n) / 2