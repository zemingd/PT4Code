def check(arr,length)
  if arr.include?(length) # 2個あったら返す
    arr.delete_at(arr.index(length))
    return length
  end
  return nil
end

n = gets.chomp.to_i
sticks = gets.chomp.split(" ").map(&:to_i)

tmp = nil
side = nil
while sticks.size > 0 do

  length = sticks.max

  sticks.delete_at(sticks.index(length))


  unless side.nil?
    ret = check(sticks,length)
    unless ret.nil?
      puts ret * side
      exit
    end
  end

  side ||= check(sticks,length)

end

puts 0