N = gets.to_i
hash = {}
N.times do |i|
    a = gets.to_i
    hash[a] = !hash[a]
end

puts hash.values.count(true)