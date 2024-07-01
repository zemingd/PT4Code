a, b, c, d = gets.split.map(&:to_i)
alice = (a..b).to_a
bob = (c..d).to_a
count = 0


alice.each do |i|
  if bob.include?(i)
    count += 1
  end
end

if count > 0
  count -= 1
end

puts count