n = gets.to_i
hash = {}

n.times do
  a = gets.to_i
  if hash.include?(a)
    hash.delete(a)
  else
    hash[a] = true
  end
end

puts hash.size
