  n=$stdin.gets.to_i
  a=$stdin.gets.split.map(&:to_i)
  puts a.reverse.join " "
