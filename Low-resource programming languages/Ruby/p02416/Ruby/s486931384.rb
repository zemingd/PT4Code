until (x = gets.chomp) == "0"
  puts x.split("").map(&:to_i).inject(&:+)
end