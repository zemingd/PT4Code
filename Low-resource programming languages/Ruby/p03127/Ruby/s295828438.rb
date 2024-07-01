input = gets.chomp
N = input.to_i
input = gets.chomp
monster_list = input.split(" ").map{|e| e.to_i}

loop {
  monster_list.sort!
  atacker = monster_list.first
  monster_list[1] -= atacker*(monster_list[1]/atacker)
  monster_list.delete_at(1) if monster_list[1] == 0

  break if monster_list.size==1
}
puts monster_list.first
