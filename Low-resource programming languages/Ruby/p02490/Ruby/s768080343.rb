while l = gets.split.map(&:to_i)
  exit if l = [0, 0]
  puts  l.sort*" "
end