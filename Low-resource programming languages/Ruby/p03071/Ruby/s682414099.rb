n = gets.chop.split.map(&:to_i)[0]
hotels = gets.chop.split.map(&:to_i)

avai = 0
current_max = 0

n.times do |i|
  if current_max <= hotels[i]
    avai += 1
    current_max = hotels[i]
  end 
end

puts avai
