n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i).map {|i| i/400}
monster_count = 0
arr.each do |num|
  if num >= 8
    monster_count += 1
  end
end
arr.delete_if{|num| num >= 8}
p arr
ans = arr.uniq.size
puts ans.to_s + " " + ans+monster_count.to_s