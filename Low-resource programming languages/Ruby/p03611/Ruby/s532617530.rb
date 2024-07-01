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

max = 0
hash.each do |key, value|
  count = value + (hash[key+1] || 0) + (hash[key+2] || 0)
  max = [max, count].max
end
puts max
