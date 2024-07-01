x = gets.chomp.split(" ").map(&:to_i)
5.times do |i|
  if x[i] == 0
    puts i+1
  end
end