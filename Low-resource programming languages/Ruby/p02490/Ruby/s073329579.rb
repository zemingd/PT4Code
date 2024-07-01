while l = gets.split.map(&:to_i)
  puts  l.sort*" "
  exit if l = [0, 0]
end