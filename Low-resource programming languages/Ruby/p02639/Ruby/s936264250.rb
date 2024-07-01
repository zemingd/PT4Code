l = gets.chomp.split(" ").map {|c| c.to_i}

l.each_with_index do |n, idx|
  if n == 0
    p idx+1
  end
end