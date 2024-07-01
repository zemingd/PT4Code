num = gets.to_i
blocks = gets.chomp.split(" ").map(&:to_i)

target = 1
breaking = 0
breaking_count = 0

num.times do |i|
  if blocks[breaking] == target
    breaking += 1
    target += 1
  else
    blocks.delete_at(breaking)
    breaking_count += 1
  end
end

puts "-1" if num == breaking_count
puts breaking_count if num != breaking_count
