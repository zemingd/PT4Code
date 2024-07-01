
in_n = gets.chomp.split(" ").map(&:to_i)
in_s = gets.chomp
in_l = Array.new
# puts in_s

in_n[1].times do |i|
  in_l[i] = gets.chomp.split(" ").map(&:to_i)
end

in_n[1].times do |i|
  str = in_s[(in_l[i][0] - 1)..(in_l[i][1] - 1)]
  # puts i
  # puts in_l[i][0]
  # puts in_l[i][1]
  # puts str
  puts str.scan("AC").length
end
