x = gets.chomp.split(" ").map(&:to_i)
x.each_with_index do |n, i|
  if n == 0
    print i+1
  end
end
