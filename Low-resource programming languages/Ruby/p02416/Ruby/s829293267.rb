while true
  line = STDIN.gets.chomp
  if line == "0" then break end
  sum = 0
  line.chars {
    |ch| sum += ch.to_i
  }
  puts sum
end