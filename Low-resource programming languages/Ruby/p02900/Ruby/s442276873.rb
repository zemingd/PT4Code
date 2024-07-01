require 'prime'

a, b = gets.split.map(&:to_i)
gcd = a.gcd(b)
cnt = 1

(1..gcd).each do |n|
  if (a % n).zero? && (b % n).zero? && Prime.prime?(n)
    cnt += 1
  end
end

puts cnt
