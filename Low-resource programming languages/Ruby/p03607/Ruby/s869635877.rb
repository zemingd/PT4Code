N = gets.to_i
hash = Hash.new(0)

N.times do
	s = gets.chomp.to_s
	hash[s] +=  hash[s]==0 ? 1 : -1
end

print hash.values.inject(:+)