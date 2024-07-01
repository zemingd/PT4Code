num = gets.to_i
hash = {}
num.times do |i|
  a = gets.to_i
  if hash.has_key?("#{a}")
	hash.delete("#{a}")
  else
    hash["#{a}"] = 0
  end
end

print hash.size