s=gets.chars.group_by(&:itself).map(&:size).sort
t=gets.chars.group_by(&:itself).map(&:size).sort
puts (s==t ? "Yes" : "No")
