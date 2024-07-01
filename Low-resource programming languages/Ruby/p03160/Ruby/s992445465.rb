number_of_stone = gets.chomp
stones = gets.chomp

stones = stones.strip
stones = stones.gsub(/\s+/, " ")
stones = stones.split(" ")
stones.map!{ |x| x.to_i }
total_cost = 0
cur_index = 0

while !stones[cur_index+1].nil?
  stone_i1_height = stones[cur_index+1]
  stone_i2_height = stones[cur_index+2]
  current_stone_height = stones[cur_index]
  last_stone_height = stones[-1]
  if stone_i2_height.nil?
    total_cost += (current_stone_height - stone_i1_height).abs
    break
  end
  cost_i1_with_last = (stone_i1_height - last_stone_height).abs
  cost_i2_with_last = (stone_i2_height - last_stone_height).abs
  if (cost_i1_with_last < cost_i2_with_last)
    total_cost += (current_stone_height - stone_i1_height).abs
    cur_index += 1
  else
    total_cost += (current_stone_height - stone_i2_height).abs
    cur_index += 2
  end
end

puts total_cost