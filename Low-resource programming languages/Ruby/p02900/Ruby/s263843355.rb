require 'prime'
require 'set'
a, b = gets.split.map(&:to_i)

mods_a = Set.new
mods_b = Set.new

2.upto( Math.sqrt(a) ) do |i|
  if a % i == 0
    mods_a.add(i)
    a = a / i while a % i == 0
  end
  if b % i == 0
    mods_b.add(i)
    b = b / i while b % i == 0
  end
end
mods_a.add(a) if a.prime?
mods_b.add(b) if b.prime?

puts (mods_a & mods_b).size + 1