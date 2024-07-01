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

n = gets
as = compress_array_to_hash(gets.split.map(&:to_i)).sort_by { |key, value| key }.reverse
use = []
until use.length == 2 || as.empty?
  temp = as.shift
  if temp[1] >= 4
    use += [temp[0], temp[0]]
  elsif temp[1] >= 2
    use << temp[0]
  end
end
use += [0, 0]
puts use[0] * use[1]
