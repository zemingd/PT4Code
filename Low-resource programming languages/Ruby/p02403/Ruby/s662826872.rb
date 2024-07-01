while (a,b = gets.split(" ").map(&:to_i)) != [0, 0]
  a.times do
    puts '#'*b
  end
  puts
end

