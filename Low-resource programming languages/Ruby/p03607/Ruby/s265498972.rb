n = gets.strip.to_i

hash = {}
(0..n-1).each do |index|
  input = gets.strip.to_i
  if hash[input]
    hash.delete(input)
  else
    hash[input] = 0
  end
end

puts hash.keys.size
