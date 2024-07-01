gets
aa = gets.split.map(&:to_i).sort

a_count = Hash.new(0)
for a in aa
  a_count[a] = a_count[a] + 1
end

selection = []
for a, count in a_count
  if count >= 2
    selection << {"n" => a, "count" => count}
  end
end

if selection.size >= 2
  sorted_selection = selection.sort{|a1, a2| a1["n"] <=> a2["n"] }.reverse
  x = 0
  y = 0
  if sorted_selection[0]["count"] >= 4
    x = sorted_selection[0]["n"]
    y = sorted_selection[0]["n"]
  else
    x = sorted_selection[0]["n"]
    y = sorted_selection[1]["n"]
  end 
  puts x*y
else
  puts 0
end
