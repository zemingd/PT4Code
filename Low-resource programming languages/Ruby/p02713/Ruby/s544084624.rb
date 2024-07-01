require 'prime'

K = gets.to_i

ans = 0

(1..K).each do |a|
  v = a
  (1..K).each do |b|
    t = v.gcd(b)

    (1..K).each do |c|
      ans += t.gcd(c)
    end
  end
end

puts ans
