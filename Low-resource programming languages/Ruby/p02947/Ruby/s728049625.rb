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

out = 0

0.upto(n - 1) do |i|
  (i + 1).upto(n - 1) do |j|
    if arr[i] == arr[j]
      out += 1
    end
  end
end

puts out