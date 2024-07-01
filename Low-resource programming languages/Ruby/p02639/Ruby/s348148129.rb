x = gets.split(" ").map(&:to_i)
x.each_with_index do |val, i|
  if val == 0
    puts i+1
    exit
  end
end