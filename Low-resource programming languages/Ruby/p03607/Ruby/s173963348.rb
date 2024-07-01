n = gets.to_i
A = []
n.times do
  A << gets.to_i
end

hash = Hash.new {0}

A.each do |a|
  hash[a] += 1
end

num = 0
hash.each do |k, v|
  if (v % 2) == 1
    num += 1
  end
end

puts num
