require "set"
n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
max = 0
set = Set.new
a_arr.each do |a|
  hash[a] ||= 0
  hash[a] += 1
  max = a if a > max
  set << a
end

hash.each do |k, v|
  i = v > 1 ? 1 : 2
  tmp = k * i
  while tmp <= max do
    hash.delete(tmp)
    i += 1
    tmp = k * i
  end
end

puts hash.size