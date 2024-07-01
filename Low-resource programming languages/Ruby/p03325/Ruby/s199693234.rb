N = gets.chomp.split(" ").map(&:to_i)
strs = gets.chomp.split(" ").map(&:to_i)

i = 0
while strs.select(&:even?).max
  i += 1
  max_even = strs.select(&:even?).max
  division_index = strs.find_index{ |num| num == max_even }
  strs[division_index] = strs[division_index] / 2
  strs.each_with_index do |str,idx|
    strs[idx] = str * 3 unless idx == division_index
  end
end
puts i