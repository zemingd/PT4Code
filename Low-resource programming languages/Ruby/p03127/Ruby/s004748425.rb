n = gets.to_i
monsters = gets.split.map(&:to_i)
num = monsters[0]

(1..monsters.size-1).each do |m|
  num = num.gcd(monsters[m])
end

puts num
