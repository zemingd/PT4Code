n = gets.to_i
nums = gets.split.map(&:to_i)

h = {}
found = false

nums.each do |num|
  if h[num]
    found = true
    break
  end
  h[num] = true
end

puts found ? 'NO' : 'YES'