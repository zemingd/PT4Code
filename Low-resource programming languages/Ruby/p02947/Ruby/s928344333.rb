N = gets.to_i

hash = Hash.new

N.times do |i|
  d = gets.chomp.chars.sort.join('')
  unless hash[d]
    hash[d] = []
  end

  hash[d] << i
end

result = 0
hash.each do |_k, v|
  next if v.size <= 1

  result += v.combination(2).to_a.size
end
p result
