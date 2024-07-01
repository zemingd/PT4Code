K = gets.to_i
gcd = Array.new(K + 1){Array.new(K + 1, 0) }
ans = 0
(1 .. K).each do |a|
  (1 .. K).each do |b|
    gcd[a][b] = a.gcd(b)
  end
end
(1 .. K).each do |a|
  (1 .. K).each do |b|
    (1 .. K).each do |c|
      ans += gcd[gcd[a][b]][c]
    end
  end
end
puts ans
