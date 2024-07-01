n = gets.to_i
hash = Hash.new(0)
nums = gets.split.map(&:to_i)
nums.each do |num|
  hash[num] += 1
end
sides = [0, 0]
hash.each do |key, value|
  if value >= 4
    2.times { sides << key }
  elsif value >= 2
    sides << key
  end
end
sides.sort! { |a, b| b <=> a }
puts sides[0] * sides[1]
