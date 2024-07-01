num = gets.to_i
blocks = gets.chomp.split(" ").map(&:to_i)

target = 1
breaking = 0
breaking_count = 0

num.times do |i|
  if blocks[breaking] == target
    target += 1
  else
    breaking_count += 1
  end
  breaking += 1
end

puts "-1" if num == breaking_count
puts breaking_count if num != breaking_count