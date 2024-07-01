n = gets.chomp.to_i
sticks = gets.chomp.split(" ").map(&:to_i)

tmp = nil
side = nil

sticks.sort{|a,b| b<=>a}.each do |length|
  if tmp == length
    unless side.nil?
      puts side * length
      exit
    end
    side = length
    tmp = nil
  else
    tmp = length
  end
end

puts 0