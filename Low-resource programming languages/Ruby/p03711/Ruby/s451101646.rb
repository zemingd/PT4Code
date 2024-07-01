def grouping(a, b)
  group_a = [1, 3, 5, 7, 8, 10, 12]
  group_b = [4, 6, 9, 11]
  if (group_a.include?(a) && group_a.include?(b)) || (group_b.include?(a) && group_b.include?(b)) || (a == 2 && b == 2)
    puts "Yes"
  else
    puts "No"
  end
end

a, b= gets.chomp.split(" ").map(&:to_i)
grouping(a, b)