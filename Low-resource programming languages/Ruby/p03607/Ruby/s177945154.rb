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

n = gets.to_i
hash = compress_array_to_hash(readlines.map(&:to_i))
count = 0
hash.each do |key, value|
  count += 1 if value.odd?
end
puts count
