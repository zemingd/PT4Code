while line = gets
  line.chomp!

  exit if line == "0"

  puts line.split('').map(&:to_i).sum
end
