n = gets.chomp.to_i
sticks = gets.chomp.split(" ").map(&:to_i).sort{|a,b| b<=>a}

side = nil

n.times do |i|
  next if sticks[i] == 0

  if sticks.count(sticks[i]) >= 2
    if side.nil?
      side = sticks[i]
    else
      puts side * sticks[i]
      exit!
    end
    sticks[i+1] = 0
  end

  sticks[i] = 0
end

puts 0