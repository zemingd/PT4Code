n, k = gets.split.map(&:to_i)
input = gets.split.map(&:to_i)

len = input.uniq.length
puts len > k ? (len - k) : 0