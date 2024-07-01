require "set"

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
arr.each do |a|
  (1..Math.sqrt(a).to_i).each do |i|
    if a % i == 0 then
      hash[i] = (hash[i] || 0) + 1
      next if i == a / i
      b = a / i
      hash[b] = (hash[b] || 0) + 1
    end
  end
end

max = 1
hash.select do |k, v|
  if v >= n - 1 then
    max = k if k > max
  end
end

puts max

