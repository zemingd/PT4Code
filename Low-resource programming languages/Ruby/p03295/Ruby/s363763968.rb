N, M = gets.split.map(&:to_i)

battle = []
removed = []
remove_count = 0

arr = []
M.times do
  a, b = gets.split.map(&:to_i)
  if b - a == 1
    removed << b-1
    remove_count += 1
  else
    arr << [a, b]
  end
end

arr.each do |a, b|
  add = true
  removed.each do |r|
    if a <= r and r < b
      add = false
      break
    end
  end
  battle << a.upto(b-1).to_a if add
end

while battle.any?
  remove_bridge = 0
  max_count = 0
  battle_ids_include_bridge = []
  battle.flatten.uniq.each do |n|
    # puts "WILL FIND #{n}"
    num_count = 0
    battle_ids = []
    battle.each.with_index do |battles, id|
      # puts "battles: #{battles}"
      if battles.include?(n)
        # puts "FOUND #{n} !"
        num_count += 1 
        battle_ids << id
      end
    end
    if num_count > max_count
      max_count = num_count
      remove_bridge = n
      battle_ids_include_bridge = battle_ids
    end
    # puts 
  end
  # puts "REMOVE BRIDGE ID: #{remove_bridge}"
  # puts "battle_ids_include_bridge: #{battle_ids_include_bridge}"
  battle_ids_include_bridge.sort.reverse.each do |id|
    battle.delete_at(id)
  end
  remove_count += 1
  # puts "---"
end

puts remove_count