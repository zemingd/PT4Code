n = gets.chomp.to_i
sticks = gets.chomp.split(" ").map(&:to_i)

tmp = nil
side = nil
while sticks.size > 0 do
  length = sticks.max

  if tmp == length # 2個目
    unless side.nil?
      puts side * length
      exit
    end
    side = length
    tmp = nil
  else
    tmp = length
  end

  sticks.delete_at(sticks.index(length))
end

puts 0