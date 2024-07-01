def anagram(str)
  hash = Hash.new(0)
  str.chars { |ch|
    hash[ch] += 1
  }
  return hash
end

n = gets.to_i

arr = []

n.times do
  arr << anagram(gets.chomp)
end

brr = arr.uniq

out = 0

brr.each { |elem|
  c = arr.count(elem)
  out += c * (c - 1) / 2
}

puts out