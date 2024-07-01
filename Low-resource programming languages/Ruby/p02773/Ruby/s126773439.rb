n = gets.chomp.to_i
h = Hash.new(0)

max_num = 0

n.times do |i|
  s = gets.chomp

  h[s] += 1


  max_num = [max_num, h[s]].max

end



h =  h.sort_by{ |x| x[0]}

# puts max_num

h.each do |key, value|
  if value == max_num
    puts key
  end
end



