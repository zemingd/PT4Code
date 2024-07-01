require 'prime'
a, b = gets.split.map(&:to_i)
koyaku_list = []

(1..([a, b].max)).each do |i|
  if a % i == 0 && b % i == 0
    koyaku_list << i
  end
end

koyaku_list.select do |k|
  Prime.prime?(k) || k == 1
end.size.display
print("\n")
require 'prime'
a, b = gets.split.map(&:to_i)
koyaku_list = []

(1..([a, b].max)).each do |i|
  if a % i == 0 && b % i == 0
    koyaku_list << i
  end
end

koyaku_list.select do |k|
  Prime.prime?(k) || k == 1
end.size.display
print("\n")
