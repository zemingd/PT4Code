def compress_array_to_hash(array)
  hash = {}
  array.map { |e|
    if hash[e].nil?
      hash[e] = 1
    else
      hash[e] += 1
    end
  }
  hash
end
_n = gets
hash = compress_array_to_hash(gets.split.map(&:to_i))

candidates = []
hash.each do |key, value|
  candidates += [key-1, key, key+1]
  candidates.uniq!
end

max = 0
candidates.each do |candidate|
  count = (hash[candidate-1] || 0) + (hash[candidate] || 0) + (hash[candidate+1] || 0)
  max = [max, count].max
end
puts max
