K = gets.chomp.to_i
sum = 0

(1..K).each do |a|
  (1..K).each do |b|
    (1..K).each do |c|
      s = a.gcd(b)
      m = s.gcd(c)
      
      sum = sum + m
    end
  end
end

puts sum