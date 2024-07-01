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
end
if a.prime?
  mods_a.add(a) 
end

2.upto( Math.sqrt(b) ) do |i|
  if b % i == 0
    mods_b.add(i)
    b = b / i while b % i == 0
  end
end
if b.prime?
  mods_b.add(b)
end

puts (mods_a & mods_b).size + 1