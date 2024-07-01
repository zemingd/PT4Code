k = gets.to_i
sum = 0

(1..k).each do |a|
  (a..k).each do |b|
    (b..k).each do |c|
      case
      when a == b && b == c
        sum += a
      when a == b
        sum += b.gcd(c) * 3
      when b == c
        sum += c.gcd(a) * 3
      when c == a
        sum += a.gcd(b) * 3
      else
        sum += a.gcd(b).gcd(c) * 6
      end
    end
  end
end

puts sum