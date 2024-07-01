gets.to_i.times{
  input = gets.chomp.split(" ").map(&:to_i)
  puts (input[1] - input[3])/(input[0] - input[2]) == (input[5] - input[7])/(input[4] - input[6]) ? "YES" : "NO"
}

