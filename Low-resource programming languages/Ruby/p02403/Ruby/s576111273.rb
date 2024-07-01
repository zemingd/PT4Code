while ((h,w = gets.split(" ").map(&:to_i)).select{|i| i != 0}.length > 0) do
  h.times do
    puts "#"*w
  end
  puts ""
end