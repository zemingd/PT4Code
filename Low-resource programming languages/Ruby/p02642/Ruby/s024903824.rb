require "set"
n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
a_arr.each do |a|
  hash[a] ||= 0
  hash[a] += 1
end

max = 0
set3 = Set.new
hash.each do |k, v|
  if v == 1
    set3 << k
    max = k if k > max
  end
end

hash.each do |k, v|
  i = 2
  tmp = k * i
  while tmp <= max do
    set3.delete(tmp)
    i += 1
    tmp = k * i
  end
end

puts set3.size