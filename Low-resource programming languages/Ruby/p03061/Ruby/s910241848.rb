def gcd(a,b); b==0 ? a : gcd(b, a % b); end

N = gets.strip.to_i
as = gets.strip.split.map(&:to_i)

from_left = [as[0]]
from_right = [as[-1]]

(N - 1).times do |i|
  from_left[i+1] = gcd(from_left[i], as[i+1])
  from_right[i+1] = gcd(from_right[i], as[-2-i])
end

max = [from_right[N-2], from_left[N-2]].max
1.upto(N-2) do |i|
  gcd_without_i = gcd(from_left[i-1], from_right[N-i-2])
  max = gcd_without_i if gcd_without_i > max
end
puts max
