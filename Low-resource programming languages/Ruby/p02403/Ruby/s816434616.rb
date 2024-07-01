while true do
  h,w = gets.split(" ").map(&:to_i)
  if h == 0 && w == 0 then
    puts 
    break
  end
  h.times do |i|
    puts("#"*w)
  end
end