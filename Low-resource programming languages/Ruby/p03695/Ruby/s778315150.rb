n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i).map {|i| i/400}
monster_count = 0
arr.each do |num|
  if num >= 8
    monster_count += 1
  end
end
arr.delete_if{|num| num >= 8}
ans = arr.uniq.size
puts ans.to_s + " " + [8,ans+monster_count].min.to_s