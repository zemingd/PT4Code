x = gets.split(" ").map(&:to_i)


x.each do |i|
  if x[i] == 0
    puts i+1
  end
end