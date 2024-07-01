n = gets.chomp.to_i
p_array = gets.chomp.split.map(&:to_i)
sort_p = p_array.sort
count = 0
p_array.each_with_index do |p_item, i|
  count += 1 if p_item != sort_p[i]
end
if count <= 2
  print("YES\n")
else
  print("NO\n")
end