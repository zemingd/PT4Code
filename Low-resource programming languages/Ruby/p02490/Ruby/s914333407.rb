while l = gets.split.map(&:to_i)
  exit if l = [0, 0]
  l.sort*" "
end