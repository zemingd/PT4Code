line = readlines.map(&:chomp)

num_count = line[0].split(" ")
nums = line[1].split(" ")


nums_hash = Hash.new(0)

nums.each do |num|
  nums_hash[num] += 1
end

ans = "YES"

nums_hash.each_value do |v|
  if 1 < v
    ans = "NO"
  end
end

puts ans
